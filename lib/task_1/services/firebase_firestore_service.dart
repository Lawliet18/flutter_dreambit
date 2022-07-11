import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreService {
  static Future<void> updateUserAvatar(String imageUrl, String userId) {
    return FirebaseFirestore.instance.collection('users').doc(userId).set(
      {
        'avatarUrl': imageUrl,
        'updatedAt': DateTime.now(),
      },
      SetOptions(merge: true),
    );
  }
}
