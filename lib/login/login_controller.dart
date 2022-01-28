import 'package:desafio_1/commons/entities/user_register.dart';
import 'package:desafio_1/login/remote/login_repository.dart';
import 'package:desafio_1/main.dart';
import 'package:desafio_1/register/register_page.dart';
import 'package:desafio_1/splash/splash_page.dart';
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

  String? validatorEmail(String? value) {
    isValidEmailLogin = utils.isEmail(value);
  }

  String? validatorSenha(String? value) {
    isValidPasswdLogin = utils.isPassword(value);
  }

  onTapLogin(context) async {
    if (isValidEmailLogin && isValidPasswdLogin) {
      final user = UserData(
          email: emailLoginTextController.text,
          password: passowordLoginTextController.text);
      final userInfo = await repository.loginWithEmail(user);
      final isLogged = userInfo != null;

      if (isLogged) {
        sessionStore.userInfo = userInfo;
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SplashPage()),
        );
      } else {
        final snackBar = SnackBar(
          content: Text("Falha no login"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  void navigateRegisterPage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RegisterPage(),
      ),
    );
  }
}
