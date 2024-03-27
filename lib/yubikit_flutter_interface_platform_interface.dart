import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'yubikit_flutter_interface_method_channel.dart';

abstract class YubikitFlutterInterfacePlatform extends PlatformInterface {
  /// Constructs a YubikitFlutterInterfacePlatform.
  YubikitFlutterInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static YubikitFlutterInterfacePlatform _instance = MethodChannelYubikitFlutterInterface();

  /// The default instance of [YubikitFlutterInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelYubikitFlutterInterface].
  static YubikitFlutterInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YubikitFlutterInterfacePlatform] when
  /// they register themselves.
  static set instance(YubikitFlutterInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
