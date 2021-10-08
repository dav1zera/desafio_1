import 'package:desafio_1/commons/container_box.dart';
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
      children: [],
    );
  }
}
