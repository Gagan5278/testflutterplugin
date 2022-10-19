import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_demo_gagan_plugin_method_channel.dart';

abstract class MyDemoGaganPluginPlatform extends PlatformInterface {
  /// Constructs a MyDemoGaganPluginPlatform.
  MyDemoGaganPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyDemoGaganPluginPlatform _instance = MethodChannelMyDemoGaganPlugin();

  /// The default instance of [MyDemoGaganPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyDemoGaganPlugin].
  static MyDemoGaganPluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyDemoGaganPluginPlatform] when
  /// they register themselves.
  static set instance(MyDemoGaganPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
