import 'package:desafio_1/commons/widgets/container_box.dart';

import 'package:desafio_1/commons/widgets/text_form_field.dart';
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
          validator: controller.validatorName,
          controller: controller.nameRegisterTextController,
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          text: "Email",
          image: "assets/images/mail.png",
          validator: controller.validatorEmail,
          controller: controller.emailRegisterTextController,
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          text: "Senha",
          image: "assets/images/lock.png",
          validator: controller.validatorSenha,
          obscureText: true,
          controller: controller.passwdRegisterTextController,
        ),
      ],
    );
  }
}
