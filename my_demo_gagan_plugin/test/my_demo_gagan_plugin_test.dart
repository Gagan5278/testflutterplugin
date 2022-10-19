import 'package:flutter_test/flutter_test.dart';
import 'package:my_demo_gagan_plugin/my_demo_gagan_plugin.dart';
import 'package:my_demo_gagan_plugin/my_demo_gagan_plugin_platform_interface.dart';
import 'package:my_demo_gagan_plugin/my_demo_gagan_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyDemoGaganPluginPlatform 
    with MockPlatformInterfaceMixin
    implements MyDemoGaganPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyDemoGaganPluginPlatform initialPlatform = MyDemoGaganPluginPlatform.instance;

  test('$MethodChannelMyDemoGaganPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyDemoGaganPlugin>());
  });

  test('getPlatformVersion', () async {
    MyDemoGaganPlugin myDemoGaganPlugin = MyDemoGaganPlugin();
    MockMyDemoGaganPluginPlatform fakePlatform = MockMyDemoGaganPluginPlatform();
    MyDemoGaganPluginPlatform.instance = fakePlatform;
  
    expect(await myDemoGaganPlugin.getPlatformVersion(), '42');
  });
}
