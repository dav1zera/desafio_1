import 'package:desafio_1/commons/custom_button.dart';
import 'package:desafio_1/commons/screen_image.dart';
import 'package:desafio_1/login/widgets/box_form_login.dart';
import 'package:desafio_1/login/widgets/urban_image.dart';
import 'package:desafio_1/register/widgets/box_form_register.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool? isValidEmail;
bool? isValidPasswd;
bool? isValidName;

class RegisterPage extends StatefulWidget {
  final double? height;
  final formKey = GlobalKey<FormState>();

  final Utils utils = Utils();

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
          Text("Cadastro",
              style: GoogleFonts.neuton(
                fontSize: 30,
                color: Colors.white,
              )),
          BoxFormRegister(
            formKey: widget.formKey,
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomButton(
            text: "Próximo",
            onPressed: () {
              setState(() {
                widget.formKey.currentState?.validate();
              });
            },
          ),
          UrbanImage(
            image: "assets/images/urban.png",
          )
        ],
      ),
    );
  }
}
