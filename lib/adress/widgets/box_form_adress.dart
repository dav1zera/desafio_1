import 'package:desafio_1/adress/adress_controller.dart';
import 'package:desafio_1/commons/widgets/container_box.dart';
import 'package:desafio_1/commons/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BoxFormAdress extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final AdressController controller;

  BoxFormAdress({
    Key? key,
    required this.formKey,
    required this.controller,
  }) : super(key: key);

  @override
  State<BoxFormAdress> createState() => _BoxFormAdressState();
}

class _BoxFormAdressState extends State<BoxFormAdress> {
  var maskFormatterCep = new MaskTextInputFormatter(
      mask: '#####-###', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      formKey: widget.formKey,
      height: 140.0,
      children: [
        SizedBox(
          height: 5,
        ),
        CampText(
          width: MediaQuery.of(context).size.width * 0.3,
          text: "CEP",
          controller: widget.controller.cepTextController,
          onChanged: widget.controller.onChangedCep,
          inputFormatters: [maskFormatterCep],
          onTap: () {
            setState(() {
              widget.controller.hasError = false;
            });
          },
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            CampText(
              width: MediaQuery.of(context).size.width * 0.6,
              text: "Rua",
              controller: widget.controller.ruaTextController,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CampText(
                text: "Num",
                controller: widget.controller.numTextController,
              ),
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
              controller: widget.controller.bairroTextController,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CampText(
                text: "Complemento",
                controller: widget.controller.compleTextController,
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        CampText(
          width: MediaQuery.of(context).size.width * 0.6,
          text: "Cidade",
          controller: widget.controller.cidadeTextController,
        ),
        SizedBox(
          height: 4,
        ),
        if (widget.controller.hasError)
          Text(
            "Cep inválido",
            style: TextStyle(
              color: Colors.red,
            ),
          )
      ],
    );
  }
}
