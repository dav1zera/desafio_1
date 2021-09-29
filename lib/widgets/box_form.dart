import 'package:desafio_1/my_app_page.dart';
import 'package:desafio_1/utils.dart';
import 'package:desafio_1/widgets/text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final Utils utils = Utils();

  BoxForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      padding: const EdgeInsets.only(right: 17.0, left: 13.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(4.0, 4.0),
            )
          ]),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            CampText(
              text: "E-mail",
              image: "assets/images/man.png",
              validator: (value) {
                if (utils.isEmail(value)) {
                  isValidEmail = true;
                } else {
                  isValidEmail = false;
                }
              },
            ),
            SizedBox(
              height: 8,
            ),
            CampText(
              text: "Senha",
              image: "assets/images/lock.png",
              validator: (value) {
                if (utils.isPassword(value)) {
                  isValidPasswd = true;
                } else {
                  isValidPasswd = false;
                }
              },
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Align(
                alignment: Alignment(1, 0),
                child: Text("Credenciais inválidas.",
                    style: GoogleFonts.ovo(
                      fontSize: 10,
                      textStyle: TextStyle(
                        color: Color(0xFFB30000),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
