import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// this is the main secure storage service, responsible for keeping instance
/// and main methods of flutter secure storage
class SecureStorageService {
  static SecureStorageService? _instance;
  static FlutterSecureStorage? _storage;

  SecureStorageService._();

  /// init method
  static Future<SecureStorageService> init() async{
    if(_instance !=null) return _instance!;

    _instance = SecureStorageService._();

    _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );

    return _instance!;
  }

  FlutterSecureStorage get _secureStorage {
    if (_storage == null) {
      throw Exception(
        'SecureStorageService not initialized. '
            'Call SecureStorageService.init() before using it.',
      );
    }
    return _storage!;
  }

  /// write method
  Future<void> write(String key, String value) async =>
      await _secureStorage.write(key: key, value: value);

  /// read method
  Future<String?> read(String key) async=>
      await _secureStorage.read(key: key);

  /// delete method
  Future<void> delete(String key) async =>
      await _secureStorage.delete(key: key);

  /// delete all method
  Future<void> deleteAll() async => await _secureStorage.deleteAll();

}
