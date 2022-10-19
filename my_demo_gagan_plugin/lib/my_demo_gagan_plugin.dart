
import 'my_demo_gagan_plugin_platform_interface.dart';

class MyDemoGaganPlugin {
  Future<String?> getPlatformVersion() {
    return MyDemoGaganPluginPlatform.instance.getPlatformVersion();
  }
}
