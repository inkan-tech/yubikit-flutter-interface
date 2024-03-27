import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yubikit_flutter_interface_platform_interface.dart';

/// An implementation of [YubikitFlutterInterfacePlatform] that uses method channels.
class MethodChannelYubikitFlutterInterface extends YubikitFlutterInterfacePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yubikit_flutter_interface');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
