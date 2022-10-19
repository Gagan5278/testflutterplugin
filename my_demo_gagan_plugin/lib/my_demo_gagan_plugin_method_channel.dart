import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_demo_gagan_plugin_platform_interface.dart';

/// An implementation of [MyDemoGaganPluginPlatform] that uses method channels.
class MethodChannelMyDemoGaganPlugin extends MyDemoGaganPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_demo_gagan_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
