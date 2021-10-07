import 'package:desafio_1/login/widgets/box_form_login.dart';
import 'package:desafio_1/commons/custom_button.dart';
import 'package:desafio_1/commons/screen_image.dart';
import 'package:desafio_1/login/widgets/urban_image.dart';
import 'package:flutter/material.dart';

bool? isValidEmailLogin;
bool? isValidPasswdLogin;

class LoginPage extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          BoxFormLogin(
            formKey: widget.formKey,
          ),
          SizedBox(
            height: 28,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              setState(() {
                widget.formKey.currentState?.validate();
              });
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
