import 'package:desafio_1/register/entities/user_register.dart';
import 'package:desafio_1/register/remote/register_repository.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

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

  callRegisterRepository() {
    if (isValidEmailRegister && isValidPasswdRegister && isValidNameRegister) {
      final user = UserRegister(
        name: nameRegisterTextController.text,
        email: emailRegisterTextController.text,
        password: passwdRegisterTextController.text,
      );
      repository.createUserEmail(user);
    }
  }
}
