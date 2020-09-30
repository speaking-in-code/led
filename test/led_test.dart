import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:led/led.dart';

void main() {
  const MethodChannel channel = MethodChannel('led');

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
    expect(await Led.platformVersion, '42');
  });
}
