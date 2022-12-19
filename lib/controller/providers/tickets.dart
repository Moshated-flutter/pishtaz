import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Tiket {
 static Future<void> sendMessage({required String message}) async {
    final user = await FirebaseAuth.instance.currentUser;
    final userData = await FirebaseFirestore.instance
        .collection('Users')
        .doc(user!.uid)
        .get();
    FirebaseFirestore.instance.collection('tikets/${user.uid}').add({
      'text': message,
      'datetime': Timestamp.now(),
    },);
  }
}
