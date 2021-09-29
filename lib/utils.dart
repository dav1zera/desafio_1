//Minhas Funções para uso no app

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

    const passwdpattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

    final regPass = RegExp(passwdpattern);

    if (!regPass.hasMatch(password)) {
      return false;
    }

    return true;
  }
}

/*
bool isPassword(String? password, [int minLength = 8]) {
    if (password == null || password.length < minLength) {
      return false;
    }

    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    if (hasUppercase) {
      bool hasDigits = password.contains(RegExp(r'[0-9]'));
      if (hasDigits) {
        bool hasLowercase = password.contains(RegExp(r'[a-z]'));
        if (hasLowercase) {
          bool hasSpecialCharacters =
              password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
          return hasSpecialCharacters;
        }
      }
    }

    return false;
  }
}

regex  = r'[0-9] [a-z] [!@#$%^&*(),.?":{}|<>]'
*/

