import 'package:desafio_1/widgets/box_form.dart';
import 'package:desafio_1/widgets/custom_button.dart';
import 'package:desafio_1/widgets/screen_image.dart';
import 'package:desafio_1/widgets/urban_image.dart';
import 'package:flutter/material.dart';

bool isValidEmail = false;
bool isValidPasswd = false;

class MyAppPage extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  MyAppPage({Key? key}) : super(key: key);

  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          ScreenImage(
            image: "assets/images/screen.png",
          ),
          SizedBox(
            height: 26,
          ),
          BoxForm(
            formKey: widget.formKey,
          ),
          SizedBox(
            height: 28,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              widget.formKey.currentState?.validate();
              isValidEmail ? print("Email válido") : print("Email inválido");
              isValidPasswd ? print("Senha válida") : print("Senha inválida");
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            text: "Cadastrar",
            onPressed: () {},
          ),
          UrbanImage(
            image: "assets/images/urban.png",
          )
        ],
      ),
    );
  }
}
