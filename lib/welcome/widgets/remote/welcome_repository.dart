import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_1/commons/entities/adress_entity.dart';
import 'package:desafio_1/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  WelcomeRepository({
    required this.auth,
    required this.firestore,
  });

  Future<void> signOut() async {
    await auth.signOut();
  }

  Future<AdressEntity> getUserData() async {
    DocumentSnapshot<Map<String, dynamic>> user = await firestore
        .collection("users")
        .doc(sessionStore.userInfo!.uid)
        .get();

    final adress = AdressEntity.fromMap(user.data()!["adress"]);
    return adress;
  }
}
