import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/login/login_controller.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:desafio_1/commons/text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxFormLogin extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Utils utils = Utils();
  final LoginController controller;

  BoxFormLogin({
    Key? key,
    required this.controller,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      height: 82.0,
      formKey: formKey,
      children: [
        SizedBox(
          height: 5,
        ),
        CampText(
          text: "E-mail",
          image: "assets/images/man.png",
          validator: validatorEmail,
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          text: "Senha",
          image: "assets/images/lock.png",
          validator: validatorSenha,
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Align(
            alignment: Alignment(1, 0),
            child: Text(getStatusDescription(),
                style: GoogleFonts.ovo(
                  fontSize: 10,
                  textStyle: TextStyle(
                    color: Color(0xFFB30000),
                  ),
                )),
          ),
        ),
      ],
    );
  }

  String? validatorSenha(String? value) {
    if (utils.isPassword(value)) {
      controller.isValidPasswdLogin = true;
    } else {
      controller.isValidPasswdLogin = false;
    }
  }

  String? validatorEmail(String? value) {
    if (utils.isEmail(value)) {
      controller.isValidEmailLogin = true;
    } else {
      controller.isValidEmailLogin = false;
    }
  }

  String getStatusDescription() {
    return (controller.isValidEmailLogin == null ||
            controller.isValidPasswdLogin == null)
        ? " "
        : controller.isValidEmailLogin! && controller.isValidPasswdLogin!
            ? "Credenciais válidas."
            : "Credenciais inválidas.";
  }
}
