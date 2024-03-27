import 'package:flutter_test/flutter_test.dart';
import 'package:yubikit_flutter_interface/yubikit_flutter_interface.dart';
import 'package:yubikit_flutter_interface/yubikit_flutter_interface_platform_interface.dart';
import 'package:yubikit_flutter_interface/yubikit_flutter_interface_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockYubikitFlutterInterfacePlatform
    with MockPlatformInterfaceMixin
    implements YubikitFlutterInterfacePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final YubikitFlutterInterfacePlatform initialPlatform = YubikitFlutterInterfacePlatform.instance;

  test('$MethodChannelYubikitFlutterInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelYubikitFlutterInterface>());
  });

  test('getPlatformVersion', () async {
    YubikitFlutterInterface yubikitFlutterInterfacePlugin = YubikitFlutterInterface();
    MockYubikitFlutterInterfacePlatform fakePlatform = MockYubikitFlutterInterfacePlatform();
    YubikitFlutterInterfacePlatform.instance = fakePlatform;

    expect(await yubikitFlutterInterfacePlugin.getPlatformVersion(), '42');
  });
}
