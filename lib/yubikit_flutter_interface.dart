
import 'yubikit_flutter_interface_platform_interface.dart';

class YubikitFlutterInterface {
  Future<String?> getPlatformVersion() {
    return YubikitFlutterInterfacePlatform.instance.getPlatformVersion();
  }
}
