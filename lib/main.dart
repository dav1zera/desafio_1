import 'package:flutter/material.dart';

//import 'login/login_page.dart';
import 'register/register_page.dart';
//Shift R = Reload completo da aplicação;

void main() {
  runApp(MeuHello());
}

class MeuHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}
