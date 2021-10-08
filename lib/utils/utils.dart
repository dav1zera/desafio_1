//Minhas Funções para uso no app

import 'package:desafio_1/register/register_page.dart';

class Utils {
  bool isEmail(String? string) {
    if (string == null || string.isEmpty) {
      return false;
    }

    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return false;
    }
    return true;
  }

  bool isPassword(String? password, [int minLength = 8]) {
    if (password == null || password.length < minLength) {
      return false;
    }

    bool isValidPasswd =
        RegExp(r'(?:\d+[a-z]|[a-z]+\d)[a-z\d]*').hasMatch(password); //d (0 - 9)

    return isValidPasswd;
  }

  bool isName(String? name) {
    if (name == null || name.isEmpty && name.length <= 2) {
      return false;
    }
    bool isValidName = RegExp('[a-zA-Z]').hasMatch(name);
    return isValidName;
  }
}
