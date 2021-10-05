import 'package:desafio_1/commons/custom_button.dart';
import 'package:desafio_1/commons/screen_image.dart';
import 'package:desafio_1/login/widgets/box_form_login.dart';
import 'package:desafio_1/register/widgets/box_form_register.dart';
import 'package:flutter/material.dart';

bool? isValidEmail;
bool? isValidPasswd;

class RegisterPage extends StatefulWidget {
  final double? height;
  final formKey = GlobalKey<FormState>();

  RegisterPage({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF539FCB),
      body: ListView(
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
          BoxFormRegister(),
          CustomButton(
            text: "Próximo",
            onPressed: () {
              setState(() {
                widget.formKey.currentState?.validate();
              });
            },
          ),
        ],
      ),
    );
  }
}
