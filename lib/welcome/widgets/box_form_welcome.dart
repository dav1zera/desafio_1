import 'package:desafio_1/commons/widgets/container_box.dart';
import 'package:desafio_1/main.dart';
import 'package:desafio_1/welcome/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxFormWelcome extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final WelcomeController controller;

  BoxFormWelcome({
    Key? key,
    required this.formKey,
    required this.controller,
  }) : super(key: key);

  @override
  State<BoxFormWelcome> createState() => _BoxFormWelcomeState();
}

class _BoxFormWelcomeState extends State<BoxFormWelcome> {
  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      formKey: widget.formKey,
      height: 200.0,
      children: [
        SizedBox(
          height: 5,
        ),
        Text(
          "Seu ID: ${sessionStore.userInfo!.uid}",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Seu Nome: ${sessionStore.userInfo!.name}",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Seu Email: ${sessionStore.userInfo!.email}",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Sua cidade: ${widget.controller.adress?.cidade} ",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Seu cep: ${widget.controller.adress?.cep} ",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Sua rua: ${widget.controller.adress?.rua} ",
          style: GoogleFonts.neuton(
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
