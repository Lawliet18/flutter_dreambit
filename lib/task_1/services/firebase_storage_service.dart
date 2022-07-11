import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  static Future<String> getUserAvatarDownloadUrl(File file, String userId) async {
        TaskSnapshot fileTask = await FirebaseStorage.instance
        .ref()
        .child('users')
        .child(userId)
        .child('fileName')
        .putFile(file);

    return fileTask.ref.getDownloadURL();
  }
}