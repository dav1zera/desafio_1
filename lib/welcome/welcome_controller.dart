import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_1/commons/entities/adress_entity.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/welcome/widgets/remote/welcome_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WelcomeController {
  final ValueNotifier<bool> isLoading = ValueNotifier(false);
  bool hasError = false;
  final repository = WelcomeRepository(
      auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance);
  AdressEntity? adress = null;
  getInfoUser() async {
    isLoading.value = true;
    adress = await repository.getUserData();
    isLoading.value = false;
  }

  void onTapLogout(context) async {
    await repository.signOut();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
