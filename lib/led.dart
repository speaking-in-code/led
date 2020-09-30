import 'dart:async';

import 'package:flutter/services.dart';

class Led {
  static const MethodChannel _channel =
      const MethodChannel('net.speakingincode/led');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
