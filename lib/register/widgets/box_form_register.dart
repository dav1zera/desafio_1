import 'package:desafio_1/commons/container_box.dart';

import 'package:desafio_1/commons/text_form_field.dart';
import 'package:desafio_1/register/register_controller.dart';

import 'package:desafio_1/utils/utils.dart';

import 'package:flutter/material.dart';

class BoxFormRegister extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final RegisterController controller;

  BoxFormRegister({
    Key? key,
    required this.formKey,
    required this.controller,
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
      controller.isValidEmailRegister = true;
    } else {
      controller.isValidEmailRegister = false;
    }
  }

  String? validatorSenha(String? value) {
    if (utils.isPassword(value)) {
      controller.isValidPasswdRegister = true;
    } else {
      controller.isValidPasswdRegister = false;
    }
  }

  String? validatorName(String? value) {
    if (utils.isName(value)) {
      controller.isValidNameRegister = true;
    } else {
      controller.isValidNameRegister = false;
    }
  }
}
