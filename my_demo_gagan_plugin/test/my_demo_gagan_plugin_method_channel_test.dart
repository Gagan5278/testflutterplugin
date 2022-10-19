import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_demo_gagan_plugin/my_demo_gagan_plugin_method_channel.dart';

void main() {
  MethodChannelMyDemoGaganPlugin platform = MethodChannelMyDemoGaganPlugin();
  const MethodChannel channel = MethodChannel('my_demo_gagan_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
