import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_native_method_channel.dart';

abstract class TestNativePlatform extends PlatformInterface {
  /// Constructs a TestNativePlatform.
  TestNativePlatform() : super(token: _token);

  static final Object _token = Object();

  static TestNativePlatform _instance = MethodChannelTestNative();

  /// The default instance of [TestNativePlatform] to use.
  ///
  /// Defaults to [MethodChannelTestNative].
  static TestNativePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestNativePlatform] when
  /// they register themselves.
  static set instance(TestNativePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> addNums(int a, int b) {
    throw UnimplementedError('addNums() has not been implemented.');
  }

  Future<int?> init(int w, int h) {
    throw UnimplementedError();
  }

  Future<void> draw(int texId, int x, int y, int w, int h, Uint8List pixels) {
    throw UnimplementedError();
  }

  Future<Uint8List?> getPixels(int texId) {
    throw UnimplementedError();
  }

  Future<void> invalidate(int texId) {
    throw UnimplementedError();
  }

  Future<Int32List?> getSize(int texId) {
    throw UnimplementedError();
  }

  Future<Int64List?> listTextures() {
    throw UnimplementedError();
  }

  Future<void> dispose(int texId) {
    throw UnimplementedError();
  }
}
