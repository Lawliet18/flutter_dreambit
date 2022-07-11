import 'dart:io';

abstract class IUserRepository {
  Future<void> updateUserAvatar(File file, String userId);
}