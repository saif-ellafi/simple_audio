import Cocoa
import FlutterMacOS

@available(macOS 10.12.2, *)
var simpleAudio:SimpleAudio? = nil

@available(macOS 10.12.2, *)
public class SimpleAudioPlugin: NSObject, FlutterPlugin
{
    public static func register(with registrar: FlutterPluginRegistrar)
    {
        let channel = FlutterMethodChannel(name: "simple_audio", binaryMessenger: registrar.messenger)
        let instance = SimpleAudioPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        simpleAudio = SimpleAudio(channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult)
    {
        simpleAudio!.handle(call, result: result)
    }
}
