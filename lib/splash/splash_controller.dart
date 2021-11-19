import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/main.dart';
import 'package:desafio_1/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class SplashController {
  loadData(context) {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                sessionStore.isLogged ? WelcomePage() : LoginPage(),
          ),
        );
      },
    );
  }
}
