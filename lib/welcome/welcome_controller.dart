import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/welcome/widgets/remote/welcome_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WelcomeController {
  final repository = WelcomeRepository(auth: FirebaseAuth.instance);

  void onTapLogout(context) async {
    await repository.signOut();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
