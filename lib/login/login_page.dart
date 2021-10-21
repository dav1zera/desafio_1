import 'package:desafio_1/login/login_controller.dart';
import 'package:desafio_1/login/widgets/box_form_login.dart';
import 'package:desafio_1/commons/custom_button.dart';
import 'package:desafio_1/commons/screen_image.dart';
import 'package:desafio_1/login/widgets/urban_image.dart';
import 'package:desafio_1/register/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  final formKey = GlobalKey<FormState>();
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
            formKey: formKey,
            controller: controller,
          ),
          SizedBox(
            height: 28,
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              setState(() {
                formKey.currentState?.validate();
              });
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(
            text: "Cadastrar",
            onPressed: () => controller.navigateRegisterPage(context),
          ),
          UrbanImage(
            image: "assets/images/urban.png",
          )
        ],
      ),
    );
  }
}
