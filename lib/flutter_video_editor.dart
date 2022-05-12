
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterVideoEditor {
  static const MethodChannel _channel = MethodChannel('flutter_video_editor');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
