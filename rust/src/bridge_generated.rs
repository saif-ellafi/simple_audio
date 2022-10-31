#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.0.

use crate::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;

// Section: imports

use crate::dart_streams::progress_state_stream::ProgressState;
use crate::Player;

// Section: wire functions

fn wire_new__static_method__Player_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "new__static_method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(Player::new()),
    )
}
fn wire_playback_state_stream__static_method__Player_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "playback_state_stream__static_method__Player",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || move |task_callback| Ok(Player::playback_state_stream(task_callback.stream_sink())),
    )
}
fn wire_progress_state_stream__static_method__Player_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "progress_state_stream__static_method__Player",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || move |task_callback| Ok(Player::progress_state_stream(task_callback.stream_sink())),
    )
}
fn wire_is_playing__method__Player_impl(
    port_: MessagePort,
    that: impl Wire2Api<Player> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "is_playing__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Player::is_playing(&api_that))
        },
    )
}
fn wire_open__method__Player_impl(
    port_: MessagePort,
    that: impl Wire2Api<Player> + UnwindSafe,
    path: impl Wire2Api<String> + UnwindSafe,
    autoplay: impl Wire2Api<bool> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "open__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_path = path.wire2api();
            let api_autoplay = autoplay.wire2api();
            move |task_callback| Ok(Player::open(&api_that, api_path, api_autoplay))
        },
    )
}
fn wire_play__method__Player_impl(port_: MessagePort, that: impl Wire2Api<Player> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "play__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Player::play(&api_that))
        },
    )
}
fn wire_pause__method__Player_impl(port_: MessagePort, that: impl Wire2Api<Player> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "pause__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Player::pause(&api_that))
        },
    )
}
fn wire_stop__method__Player_impl(port_: MessagePort, that: impl Wire2Api<Player> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "stop__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            move |task_callback| Ok(Player::stop(&api_that))
        },
    )
}
fn wire_set_volume__method__Player_impl(
    port_: MessagePort,
    that: impl Wire2Api<Player> + UnwindSafe,
    volume: impl Wire2Api<f32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "set_volume__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_volume = volume.wire2api();
            move |task_callback| Ok(Player::set_volume(&api_that, api_volume))
        },
    )
}
fn wire_seek__method__Player_impl(
    port_: MessagePort,
    that: impl Wire2Api<Player> + UnwindSafe,
    seconds: impl Wire2Api<u64> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "seek__method__Player",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_that = that.wire2api();
            let api_seconds = seconds.wire2api();
            move |task_callback| Ok(Player::seek(&api_that, api_seconds))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<f32> for f32 {
    fn wire2api(self) -> f32 {
        self
    }
}
impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for Player {
    fn into_dart(self) -> support::DartAbi {
        vec![self.dummy.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Player {}

impl support::IntoDart for ProgressState {
    fn into_dart(self) -> support::DartAbi {
        vec![self.position.into_dart(), self.duration.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for ProgressState {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
