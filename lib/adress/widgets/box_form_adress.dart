import 'package:desafio_1/adress/adress_page.dart';
import 'package:desafio_1/adress/andress_controller.dart';
import 'package:desafio_1/commons/container_box.dart';
import 'package:desafio_1/commons/text_form_field.dart';
import 'package:flutter/material.dart';

class BoxFormAdress extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final AdressController controller;

  BoxFormAdress({
    Key? key,
    required this.formKey,
    required this.controller,
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
          controller: controller.cepTextController,
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            CampText(
              width: MediaQuery.of(context).size.width * 0.6,
              text: "Rua",
              controller: controller.ruaTextController,
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
              controller: controller.bairroTextController,
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
          controller: controller.cidadeTextController,
        )
      ],
    );
  }
}
