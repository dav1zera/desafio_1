import 'package:desafio_1/commons/controller/controller_session.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/splash/splash_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//Shift R = Reload completo da aplicação;

ControllerSession sessionStore = ControllerSession();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MeuHello());
}

class MeuHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
