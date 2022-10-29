// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

class SimpleAudioImpl implements SimpleAudio {
  final SimpleAudioPlatform _platform;
  factory SimpleAudioImpl(ExternalLibrary dylib) =>
      SimpleAudioImpl.raw(SimpleAudioPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory SimpleAudioImpl.wasm(FutureOr<WasmModule> module) =>
      SimpleAudioImpl(module as ExternalLibrary);
  SimpleAudioImpl.raw(this._platform);
  Future<Player> newStaticMethodPlayer({dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            _platform.inner.wire_new__static_method__Player(port_),
        parseSuccessData: (d) => _wire2api_player(d),
        constMeta: kNewStaticMethodPlayerConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new__static_method__Player",
        argNames: [],
      );

  Stream<bool> playbackStateStreamStaticMethodPlayer({dynamic hint}) =>
      _platform.executeStream(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner
            .wire_playback_state_stream__static_method__Player(port_),
        parseSuccessData: _wire2api_bool,
        constMeta: kPlaybackStateStreamStaticMethodPlayerConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta
      get kPlaybackStateStreamStaticMethodPlayerConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "playback_state_stream__static_method__Player",
            argNames: [],
          );

  Stream<ProgressState> progressStateStreamStaticMethodPlayer({dynamic hint}) =>
      _platform.executeStream(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner
            .wire_progress_state_stream__static_method__Player(port_),
        parseSuccessData: _wire2api_progress_state,
        constMeta: kProgressStateStreamStaticMethodPlayerConstMeta,
        argValues: [],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta
      get kProgressStateStreamStaticMethodPlayerConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "progress_state_stream__static_method__Player",
            argNames: [],
          );

  Future<bool> isPlayingMethodPlayer({required Player that, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_is_playing__method__Player(
            port_, _platform.api2wire_box_autoadd_player(that)),
        parseSuccessData: _wire2api_bool,
        constMeta: kIsPlayingMethodPlayerConstMeta,
        argValues: [that],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kIsPlayingMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "is_playing__method__Player",
        argNames: ["that"],
      );

  Future<void> openMethodPlayer(
          {required Player that, required String path, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_open__method__Player(
            port_,
            _platform.api2wire_box_autoadd_player(that),
            _platform.api2wire_String(path)),
        parseSuccessData: _wire2api_unit,
        constMeta: kOpenMethodPlayerConstMeta,
        argValues: [that, path],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kOpenMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "open__method__Player",
        argNames: ["that", "path"],
      );

  Future<void> playMethodPlayer({required Player that, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_play__method__Player(
            port_, _platform.api2wire_box_autoadd_player(that)),
        parseSuccessData: _wire2api_unit,
        constMeta: kPlayMethodPlayerConstMeta,
        argValues: [that],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kPlayMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "play__method__Player",
        argNames: ["that"],
      );

  Future<void> pauseMethodPlayer({required Player that, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_pause__method__Player(
            port_, _platform.api2wire_box_autoadd_player(that)),
        parseSuccessData: _wire2api_unit,
        constMeta: kPauseMethodPlayerConstMeta,
        argValues: [that],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kPauseMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "pause__method__Player",
        argNames: ["that"],
      );

  Future<void> setVolumeMethodPlayer(
          {required Player that, required double volume, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_set_volume__method__Player(
            port_,
            _platform.api2wire_box_autoadd_player(that),
            api2wire_f32(volume)),
        parseSuccessData: _wire2api_unit,
        constMeta: kSetVolumeMethodPlayerConstMeta,
        argValues: [that, volume],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSetVolumeMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "set_volume__method__Player",
        argNames: ["that", "volume"],
      );

  Future<void> seekMethodPlayer(
          {required Player that, required double seconds, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_seek__method__Player(port_,
            _platform.api2wire_box_autoadd_player(that), api2wire_f64(seconds)),
        parseSuccessData: _wire2api_unit,
        constMeta: kSeekMethodPlayerConstMeta,
        argValues: [that, seconds],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSeekMethodPlayerConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "seek__method__Player",
        argNames: ["that", "seconds"],
      );

// Section: wire2api

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  Player _wire2api_player(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return Player(
      bridge: this,
      dummy: _wire2api_i32(arr[0]),
    );
  }

  ProgressState _wire2api_progress_state(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return ProgressState(
      position: _wire2api_u64(arr[0]),
      duration: _wire2api_u64(arr[1]),
    );
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
double api2wire_f32(double raw) {
  return raw;
}

@protected
double api2wire_f64(double raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

class SimpleAudioPlatform extends FlutterRustBridgeBase<SimpleAudioWire> {
  SimpleAudioPlatform(ffi.DynamicLibrary dylib) : super(SimpleAudioWire(dylib));
// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_Player> api2wire_box_autoadd_player(Player raw) {
    final ptr = inner.new_box_autoadd_player_0();
    _api_fill_to_wire_player(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_player(
      Player apiObj, ffi.Pointer<wire_Player> wireObj) {
    _api_fill_to_wire_player(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_player(Player apiObj, wire_Player wireObj) {
    wireObj.dummy = api2wire_i32(apiObj.dummy);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class SimpleAudioWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  SimpleAudioWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  SimpleAudioWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire_new__static_method__Player(
    int port_,
  ) {
    return _wire_new__static_method__Player(
      port_,
    );
  }

  late final _wire_new__static_method__PlayerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_new__static_method__Player');
  late final _wire_new__static_method__Player =
      _wire_new__static_method__PlayerPtr.asFunction<void Function(int)>();

  void wire_playback_state_stream__static_method__Player(
    int port_,
  ) {
    return _wire_playback_state_stream__static_method__Player(
      port_,
    );
  }

  late final _wire_playback_state_stream__static_method__PlayerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_playback_state_stream__static_method__Player');
  late final _wire_playback_state_stream__static_method__Player =
      _wire_playback_state_stream__static_method__PlayerPtr
          .asFunction<void Function(int)>();

  void wire_progress_state_stream__static_method__Player(
    int port_,
  ) {
    return _wire_progress_state_stream__static_method__Player(
      port_,
    );
  }

  late final _wire_progress_state_stream__static_method__PlayerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_progress_state_stream__static_method__Player');
  late final _wire_progress_state_stream__static_method__Player =
      _wire_progress_state_stream__static_method__PlayerPtr
          .asFunction<void Function(int)>();

  void wire_is_playing__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
  ) {
    return _wire_is_playing__method__Player(
      port_,
      that,
    );
  }

  late final _wire_is_playing__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_Player>)>>('wire_is_playing__method__Player');
  late final _wire_is_playing__method__Player =
      _wire_is_playing__method__PlayerPtr
          .asFunction<void Function(int, ffi.Pointer<wire_Player>)>();

  void wire_open__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
    ffi.Pointer<wire_uint_8_list> path,
  ) {
    return _wire_open__method__Player(
      port_,
      that,
      path,
    );
  }

  late final _wire_open__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_Player>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_open__method__Player');
  late final _wire_open__method__Player =
      _wire_open__method__PlayerPtr.asFunction<
          void Function(
              int, ffi.Pointer<wire_Player>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_play__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
  ) {
    return _wire_play__method__Player(
      port_,
      that,
    );
  }

  late final _wire_play__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_Player>)>>('wire_play__method__Player');
  late final _wire_play__method__Player = _wire_play__method__PlayerPtr
      .asFunction<void Function(int, ffi.Pointer<wire_Player>)>();

  void wire_pause__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
  ) {
    return _wire_pause__method__Player(
      port_,
      that,
    );
  }

  late final _wire_pause__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_Player>)>>('wire_pause__method__Player');
  late final _wire_pause__method__Player = _wire_pause__method__PlayerPtr
      .asFunction<void Function(int, ffi.Pointer<wire_Player>)>();

  void wire_set_volume__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
    double volume,
  ) {
    return _wire_set_volume__method__Player(
      port_,
      that,
      volume,
    );
  }

  late final _wire_set_volume__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_Player>,
              ffi.Float)>>('wire_set_volume__method__Player');
  late final _wire_set_volume__method__Player =
      _wire_set_volume__method__PlayerPtr
          .asFunction<void Function(int, ffi.Pointer<wire_Player>, double)>();

  void wire_seek__method__Player(
    int port_,
    ffi.Pointer<wire_Player> that,
    double seconds,
  ) {
    return _wire_seek__method__Player(
      port_,
      that,
      seconds,
    );
  }

  late final _wire_seek__method__PlayerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_Player>,
              ffi.Double)>>('wire_seek__method__Player');
  late final _wire_seek__method__Player = _wire_seek__method__PlayerPtr
      .asFunction<void Function(int, ffi.Pointer<wire_Player>, double)>();

  ffi.Pointer<wire_Player> new_box_autoadd_player_0() {
    return _new_box_autoadd_player_0();
  }

  late final _new_box_autoadd_player_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Player> Function()>>(
          'new_box_autoadd_player_0');
  late final _new_box_autoadd_player_0 = _new_box_autoadd_player_0Ptr
      .asFunction<ffi.Pointer<wire_Player> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_Player extends ffi.Struct {
  @ffi.Int32()
  external int dummy;
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
