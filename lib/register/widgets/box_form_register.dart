import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/commons/text_form_field.dart';
import 'package:desafio_1/register/register_page.dart';
import 'package:desafio_1/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxFormRegister extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  BoxFormRegister({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      height: 123.0,
      formKey: formKey,
      children: [
        SizedBox(
          height: 5,
        ),
        CampText(
          text: "Nome",
          image: "assets/images/name.png",
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          text: "Email",
          image: "assets/images/mail.png",
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
      ],
    );
  }

  String? validatorEmail(String? value) {
    if (utils.isEmail(value)) {
      isValidEmailRegister = true;
    } else {
      isValidEmailRegister = false;
    }
  }

  String? validatorSenha(String? value) {
    if (utils.isPassword(value)) {
      isValidPasswdRegister = true;
    } else {
      isValidPasswdRegister = false;
    }
  }

  String? validatorName(String? value) {
    if (utils.isName(value)) {
      isValidNameRegister = true;
    } else {
      isValidNameRegister = false;
    }
  }
}
