import 'dart:async';

import 'package:flutter/services.dart';

/// A plugin for Shopify.
class Shopify {
  static const MethodChannel _channel = MethodChannel('shopify');

  /// Returns the version of the native library.
  static Future<String?> get platformVersion async {
    final version = await _channel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
