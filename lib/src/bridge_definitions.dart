// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

part 'bridge_definitions.freezed.dart';

abstract class SimpleAudio {
  Future<Player> newStaticMethodPlayer(
      {required List<MediaControlAction> actions,
      required String dbusName,
      int? hwnd,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodPlayerConstMeta;

  /// Stops media controllers and decoder threads.
  Future<void> disposeStaticMethodPlayer({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDisposeStaticMethodPlayerConstMeta;

  Stream<PlaybackState> playbackStateStreamStaticMethodPlayer({dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kPlaybackStateStreamStaticMethodPlayerConstMeta;

  Stream<ProgressState> progressStateStreamStaticMethodPlayer({dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kProgressStateStreamStaticMethodPlayerConstMeta;

  Stream<Callback> callbackStreamStaticMethodPlayer({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCallbackStreamStaticMethodPlayerConstMeta;

  Future<bool> isPlayingMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kIsPlayingMethodPlayerConstMeta;

  /// Returns `true` if there is a file preloaded for playback.
  Future<bool> hasPreloadedMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHasPreloadedMethodPlayerConstMeta;

  Future<ProgressState> getProgressMethodPlayer(
      {required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetProgressMethodPlayerConstMeta;

  /// Opens a file or network resource for reading and playing.
  Future<void> openMethodPlayer(
      {required Player that,
      required String path,
      required bool autoplay,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOpenMethodPlayerConstMeta;

  /// Preloads a file or network resource for reading and playing.
  ///
  /// Use this method if you want gapless playback. It reduces
  /// the time spent loading between tracks (especially important
  /// for streaming network files).
  Future<void> preloadMethodPlayer(
      {required Player that, required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPreloadMethodPlayerConstMeta;

  /// Plays the preloaded item from `preload`. The file starts playing automatically.
  Future<void> playPreloadMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPlayPreloadMethodPlayerConstMeta;

  Future<void> playMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPlayMethodPlayerConstMeta;

  Future<void> pauseMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPauseMethodPlayerConstMeta;

  Future<void> stopMethodPlayer({required Player that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStopMethodPlayerConstMeta;

  Future<void> loopPlaybackMethodPlayer(
      {required Player that, required bool shouldLoop, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kLoopPlaybackMethodPlayerConstMeta;

  Future<void> setVolumeMethodPlayer(
      {required Player that, required double volume, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetVolumeMethodPlayerConstMeta;

  Future<void> seekMethodPlayer(
      {required Player that, required int seconds, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSeekMethodPlayerConstMeta;

  Future<void> setMetadataMethodPlayer(
      {required Player that, required Metadata metadata, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSetMetadataMethodPlayerConstMeta;

  Future<void> normalizeVolumeMethodPlayer(
      {required Player that, required bool shouldNormalize, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNormalizeVolumeMethodPlayerConstMeta;

  DropFnType get dropOpaqueControls;
  ShareFnType get shareOpaqueControls;
  OpaqueTypeFinalizer get ControlsFinalizer;
}

@sealed
class Controls extends FrbOpaque {
  final SimpleAudio bridge;
  Controls.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueControls;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueControls;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.ControlsFinalizer;
}

@freezed
sealed class Callback with _$Callback {
  const factory Callback.error(
    Error field0,
  ) = Callback_Error;

  /// The media controller trigged the SkipPrev action.
  const factory Callback.mediaControlSkipPrev() = Callback_MediaControlSkipPrev;

  /// The media controller trigged the SkipNext action.
  const factory Callback.mediaControlSkipNext() = Callback_MediaControlSkipNext;

  /// The player is in the looping mode and the playback
  /// just looped to the beginning.
  const factory Callback.playbackLooped() = Callback_PlaybackLooped;

  /// The decoder has calculated the duration for the current playback.
  const factory Callback.durationCalculated() = Callback_DurationCalculated;
}

@freezed
sealed class Error with _$Error {
  /// An error occurred when trying to fetch more bytes for
  /// a network stream.
  const factory Error.networkStream({
    /// The error message.
    required String message,
  }) = Error_NetworkStream;

  /// An error occurred when decoding the file.
  const factory Error.decode({
    /// The error message.
    required String message,
  }) = Error_Decode;

  /// An error occurred when trying to open a file.
  const factory Error.open({
    /// The error message.
    required String message,
  }) = Error_Open;

  /// An error occurred when trying to preload a file.
  const factory Error.preload({
    /// The error message.
    required String message,
  }) = Error_Preload;
}

/// The actions that an OS's media controller can support.
enum MediaControlAction {
  /// Seeks backwards by 10 seconds.
  rewind,

  /// Skip to the previous playing file (you will implement this functionality).
  skipPrev,

  /// Play/pause the player.
  playPause,

  /// Skip to the next file to be played (you will implement this functionality).
  skipNext,

  /// Seeks forwards by 10 seconds.
  fastForward,
}

/// The metadata of the currently playing file
/// that will be shown in the OS's media controller.
class Metadata {
  /// The title of the file.
  final String? title;

  /// The artist/creator of the file.
  final String? artist;

  /// The album that the song is in.
  final String? album;

  /// A URI that points to the art for this song.
  final String? artUri;

  /// The song's art in the form of a byte array.
  final Uint8List? artBytes;

  const Metadata({
    this.title,
    this.artist,
    this.album,
    this.artUri,
    this.artBytes,
  });
}

/// The playback state of the player.
enum PlaybackState {
  /// The player is currently playing the file.
  play,

  /// The player is currently paused and there is no output.
  pause,

  /// The player has finished playing the file.
  done,
}

class Player {
  final SimpleAudio bridge;
  final Controls controls;

  const Player({
    required this.bridge,
    required this.controls,
  });

  static Future<Player> newPlayer(
          {required SimpleAudio bridge,
          required List<MediaControlAction> actions,
          required String dbusName,
          int? hwnd,
          dynamic hint}) =>
      bridge.newStaticMethodPlayer(
          actions: actions, dbusName: dbusName, hwnd: hwnd, hint: hint);

  /// Stops media controllers and decoder threads.
  static Future<void> dispose({required SimpleAudio bridge, dynamic hint}) =>
      bridge.disposeStaticMethodPlayer(hint: hint);

  static Stream<PlaybackState> playbackStateStream(
          {required SimpleAudio bridge, dynamic hint}) =>
      bridge.playbackStateStreamStaticMethodPlayer(hint: hint);

  static Stream<ProgressState> progressStateStream(
          {required SimpleAudio bridge, dynamic hint}) =>
      bridge.progressStateStreamStaticMethodPlayer(hint: hint);

  static Stream<Callback> callbackStream(
          {required SimpleAudio bridge, dynamic hint}) =>
      bridge.callbackStreamStaticMethodPlayer(hint: hint);

  Future<bool> isPlaying({dynamic hint}) => bridge.isPlayingMethodPlayer(
        that: this,
      );

  /// Returns `true` if there is a file preloaded for playback.
  Future<bool> hasPreloaded({dynamic hint}) => bridge.hasPreloadedMethodPlayer(
        that: this,
      );

  Future<ProgressState> getProgress({dynamic hint}) =>
      bridge.getProgressMethodPlayer(
        that: this,
      );

  /// Opens a file or network resource for reading and playing.
  Future<void> open(
          {required String path, required bool autoplay, dynamic hint}) =>
      bridge.openMethodPlayer(
        that: this,
        path: path,
        autoplay: autoplay,
      );

  /// Preloads a file or network resource for reading and playing.
  ///
  /// Use this method if you want gapless playback. It reduces
  /// the time spent loading between tracks (especially important
  /// for streaming network files).
  Future<void> preload({required String path, dynamic hint}) =>
      bridge.preloadMethodPlayer(
        that: this,
        path: path,
      );

  /// Plays the preloaded item from `preload`. The file starts playing automatically.
  Future<void> playPreload({dynamic hint}) => bridge.playPreloadMethodPlayer(
        that: this,
      );

  Future<void> play({dynamic hint}) => bridge.playMethodPlayer(
        that: this,
      );

  Future<void> pause({dynamic hint}) => bridge.pauseMethodPlayer(
        that: this,
      );

  Future<void> stop({dynamic hint}) => bridge.stopMethodPlayer(
        that: this,
      );

  Future<void> loopPlayback({required bool shouldLoop, dynamic hint}) =>
      bridge.loopPlaybackMethodPlayer(
        that: this,
        shouldLoop: shouldLoop,
      );

  Future<void> setVolume({required double volume, dynamic hint}) =>
      bridge.setVolumeMethodPlayer(
        that: this,
        volume: volume,
      );

  Future<void> seek({required int seconds, dynamic hint}) =>
      bridge.seekMethodPlayer(
        that: this,
        seconds: seconds,
      );

  Future<void> setMetadata({required Metadata metadata, dynamic hint}) =>
      bridge.setMetadataMethodPlayer(
        that: this,
        metadata: metadata,
      );

  Future<void> normalizeVolume({required bool shouldNormalize, dynamic hint}) =>
      bridge.normalizeVolumeMethodPlayer(
        that: this,
        shouldNormalize: shouldNormalize,
      );
}

/// Provides the current progress of the player.
class ProgressState {
  /// The position, in seconds, of the player.
  final int position;

  /// The duration, in seconds, of the file that
  /// is being played.
  final int duration;

  const ProgressState({
    required this.position,
    required this.duration,
  });
}
