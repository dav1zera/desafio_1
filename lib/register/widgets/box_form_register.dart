import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/login/widgets/text_form_field.dart';
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
      height: 115.0,
      formKey: formKey,
      children: [
        SizedBox(
          height: 5,
        ),
        CampText(
          text: "Nome",
          image: "assets/images/name.png",
        ),
        CampText(
          text: "Email",
          image: "assets/images/man.png",
        ),
        CampText(
          text: "Senha",
          image: "assets/images/lock.png",
          obscureText: true,
        ),
      ],
    );
  }
}

//
