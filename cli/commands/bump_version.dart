import 'dart:io';

import 'package:io/io.dart';
import 'package:toml/toml.dart';
import 'package:yaml_edit/yaml_edit.dart';

import '../cli_command.dart';
import '../mixins/cli_logger.dart';
import '../mixins/package_info.dart';

class BumpVersionCommand extends CliCommand with CliLogger, PackageInfo {
  @override
  String get name => "bump_version";

  @override
  List<String> get aliases => ["bv"];

  @override
  String get description => "Updates the version shown in files.";

  BumpVersionCommand() {
    argParser.addOption(
      "level",
      abbr: "l",
      mandatory: true,
      help: "The semver version level to change.",
      allowed: ["major", "minor", "patch"],
      allowedHelp: {
        "major": "Updates the first number in the version (x.0.0)",
        "minor": "Updates the second number in the version (0.x.0)",
        "patch": "Updates the third number in the version (0.0.x)",
      },
    );
  }

  @override
  Future<int> run() async {
    final String? option = argResults?.option("level");
    if (option == null) {
      logger.stderr('Missing argument for "--level".');
      return ExitCode.usage.code;
    }

    final File pubspec =
        File("$projectRootDirectory/$packageName/pubspec.yaml");
    final YamlEditor yamlEditor = YamlEditor(await pubspec.readAsString());

    final _Level level = _Level.fromString(option);
    final _Version currentVersion =
        _Version.fromString(yamlEditor.parseAt(["version"]).value);
    final _Version newVersion = currentVersion.increment(level);

    logger.stdout(
        "Updating version to $newVersion from $currentVersion (${level.name}).");

    // pubspec.yaml
    yamlEditor.update(["version"], newVersion.toString());
    await pubspec.writeAsString(yamlEditor.toString());
    logger.trace("Updated ${pubspec.path}");

    // Cargo.toml
    final List<String> cargoPaths = [
      "$projectRootDirectory/simple_audio/Cargo.toml",
      "$projectRootDirectory/simple_audio_flutter/rust/Cargo.toml",
    ];

    for (String path in cargoPaths) {
      final Map toml = (await TomlDocument.load(
        path,
      ))
          .toMap();
      toml["package"]["version"] = newVersion.toString();
      await File(path).writeAsString(TomlDocument.fromMap(toml).toString());
      logger.trace("Updated $path");
    }

    // CMake
    final List<String> cmakePaths = [
      "$projectRootDirectory/$packageName/android/CMakeLists.txt",
      "$projectRootDirectory/$packageName/linux/CMakeLists.txt",
      "$projectRootDirectory/$packageName/windows/CMakeLists.txt",
    ];

    for (String path in cmakePaths) {
      final File cmake = File(path);
      await cmake.writeAsString(
        (await cmake.readAsString()).replaceFirst(
          RegExp(r'set\(Version "[\d|\.]+"\)\s'),
          'set(Version "${newVersion.toString()}")\n',
        ),
      );
      logger.trace("Updated $path");
    }

    // Podspec
    final String podspecName = yamlEditor.parseAt(["name"]).toString();
    final List<String> podspecPaths = [
      "$projectRootDirectory/$packageName/macos/$podspecName.podspec",
      "$projectRootDirectory/$packageName/ios/$podspecName.podspec",
    ];

    for (String path in podspecPaths) {
      final File podspec = File(path);
      String text = await podspec.readAsString();
      text = text.replaceFirst(
        RegExp(r'version = "[\d|\.]+"\s'),
        'version = "$newVersion"\n',
      );
      text = text.replaceFirst(
        RegExp(r"s\.version\s+= '[\d|\.]+'\s"),
        "s.version          = '$newVersion'\n",
      );

      await podspec.writeAsString(text);
      logger.trace("Updated $path");
    }

    logger.stdout("Done!");
    return ExitCode.success.code;
  }
}

class _Version {
  final int major;
  final int minor;
  final int patch;

  _Version(this.major, this.minor, this.patch);

  _Version increment(_Level level) {
    switch (level) {
      case _Level.major:
        return _Version(major + 1, minor, patch);
      case _Level.minor:
        return _Version(major, minor + 1, patch);
      case _Level.patch:
        return _Version(major, minor, patch + 1);
    }
  }

  static _Version fromString(String value) {
    final List<int> numbers =
        value.split(".").map((e) => int.parse(e)).toList();
    return _Version(numbers[0], numbers[1], numbers[2]);
  }

  @override
  String toString() {
    return "$major.$minor.$patch";
  }
}

enum _Level {
  major,
  minor,
  patch;

  static _Level fromString(String? value) =>
      _Level.values.firstWhere((e) => e.name == value);
}
