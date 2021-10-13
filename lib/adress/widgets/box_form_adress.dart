import 'package:desafio_1/adress/adress_page.dart';
import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/commons/text_form_field.dart';
import 'package:flutter/material.dart';

class BoxFormAdress extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  BoxFormAdress({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      formKey: formKey,
      height: 140.0,
      children: [
        SizedBox(
          height: 5,
        ),
        CampText(
          width: MediaQuery.of(context).size.width * 0.3,
          text: "CEP",
          controller: cepTextController,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            CampText(
              width: MediaQuery.of(context).size.width * 0.6,
              text: "Rua",
              controller: ruaTextController,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CampText(text: "Num"),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            CampText(
              width: MediaQuery.of(context).size.width * 0.5,
              text: "Bairro",
              controller: bairroTextController,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CampText(text: "Complemento"),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          width: MediaQuery.of(context).size.width * 0.6,
          text: "Cidade",
          controller: cidadeTextController,
        )
      ],
    );
  }
}
