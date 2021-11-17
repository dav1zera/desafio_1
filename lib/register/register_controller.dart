/*
Controller => onde ocorre toda a lógica e validação dos campos
*/

import 'package:desafio_1/adress/adress_page.dart';
import 'package:desafio_1/commons/entities/user_register.dart';
import 'package:desafio_1/register/remote/register_repository.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterController {
  bool isValidEmailRegister = false;
  bool isValidPasswdRegister = false;
  bool isValidNameRegister = false;
  final Utils utils = Utils();
  final repository = RegisterRepository(auth: FirebaseAuth.instance);

  TextEditingController emailRegisterTextController = TextEditingController();
  TextEditingController passwdRegisterTextController = TextEditingController();
  TextEditingController nameRegisterTextController = TextEditingController();

  String? validatorEmail(String? value) {
    isValidEmailRegister = utils.isEmail(value);
  }

  String? validatorSenha(String? value) {
    isValidPasswdRegister = utils.isPassword(value);
  }

  String? validatorName(String? value) {
    isValidNameRegister = utils.isName(value);
  }

  onTapRegister(context) async {
    if (isValidEmailRegister && isValidPasswdRegister && isValidNameRegister) {
      final user = UserData(
        name: nameRegisterTextController.text,
        email: emailRegisterTextController.text,
        password: passwdRegisterTextController.text,
      );
      final userId = await repository.createUserEmail(user);
      final snackBar = SnackBar(
        content: Text(
            userId != null ? "Registrado com sucesso" : "Falha no registro"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      if (userId != null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AdressPage(
              userId: userId,
            ),
          ),
        );
      }
    }
  }
}
