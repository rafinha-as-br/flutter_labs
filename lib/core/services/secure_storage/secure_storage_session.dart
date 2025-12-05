import 'package:flutterlabs/core/constants/services/constants_secure_storage.dart';
import 'package:flutterlabs/core/services/secure_storage/secure_storage_service.dart';

/// this is the user session secure storage service, it is responsible for
/// dealing with session data on secure storage
class SessionSecureStorageService {
  final SecureStorageService service;

  SessionSecureStorageService(this.service);

  /// save login token
  Future<void> saveLoginToken(String token) async =>
      await service.write(SecureStorageKeys.loginToken, token);

  /// save local user id


}
