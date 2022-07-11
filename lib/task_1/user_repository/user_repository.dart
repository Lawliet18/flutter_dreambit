import 'dart:io';

import 'package:flutter_dreambit/task_1/services/firebase_firestore_service.dart';
import 'package:flutter_dreambit/task_1/services/firebase_storage_service.dart';
import 'package:flutter_dreambit/task_1/user_repository/i_user_repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future<void> updateUserAvatar(File file, String userId) async {
    try {
      String imageUrl =
          await FirebaseStorageService.getUserAvatarDownloadUrl(file, userId);
      return FirebaseFirestoreService.updateUserAvatar(imageUrl, userId);
    } catch (e) {
      print(e);
    }
  }
}
