import 'package:desafio_1/register/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  bool? isValidEmailLogin;
  bool? isValidPasswdLogin;

  void navigateRegisterPage(context) {
    if (isValidEmailLogin != null &&
        isValidEmailLogin! &&
        isValidPasswdLogin != null &&
        isValidPasswdLogin!) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => RegisterPage()));
    }
  }
}
