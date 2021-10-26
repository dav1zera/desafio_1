import 'package:desafio_1/login/remote/login_repository.dart';
import 'package:desafio_1/register/register_page.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginController {
  bool isValidEmailLogin = false;
  bool isValidPasswdLogin = false;
  final Utils utils = Utils();
  final repository = LoginRepository(auth: FirebaseAuth.instance);

  TextEditingController emailLoginTextController = TextEditingController();
  TextEditingController passowordLoginTextController = TextEditingController();

  

  String? validatorEmail (String? value){
    // isValidEmailRegister = utils.isEmail(value);
  }

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
