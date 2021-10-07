import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:desafio_1/utils/utils.dart';
import 'package:desafio_1/login/widgets/text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxFormLogin extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final Utils utils = Utils();

  BoxFormLogin({
    Key? key,
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
      isValidPasswdLogin = true;
    } else {
      isValidPasswdLogin = false;
    }
  }

  String? validatorEmail(String? value) {
    if (utils.isEmail(value)) {
      isValidEmailLogin = true;
    } else {
      isValidEmailLogin = false;
    }
  }

  String getStatusDescription() {
    return (isValidEmailLogin == null || isValidPasswdLogin == null)
        ? " "
        : isValidEmailLogin! && isValidPasswdLogin!
            ? "Credenciais válidas."
            : "Credenciais inválidas.";
  }
}
