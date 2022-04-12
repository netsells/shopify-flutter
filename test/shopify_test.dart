import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify/shopify.dart';

void main() {
  const channel = MethodChannel('shopify');

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
    expect(await Shopify.platformVersion, '42');
  });
}
