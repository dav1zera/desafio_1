import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_1/commons/entities/adress_entity.dart';
import 'package:desafio_1/adress/remote/adress_repository.dart';
import 'package:desafio_1/login/login_page.dart';
import 'package:flutter/material.dart';
//final FirebaseAuth auth;

class AdressController {
  AdressRepository adressRepository = AdressRepository(
    firestore: FirebaseFirestore.instance,
  );
  String? userId;
  TextEditingController ruaTextController = TextEditingController();
  TextEditingController cepTextController = TextEditingController();
  TextEditingController bairroTextController = TextEditingController();
  TextEditingController cidadeTextController = TextEditingController();
  TextEditingController numTextController = TextEditingController();
  TextEditingController compleTextController = TextEditingController();

  final ValueNotifier<bool> isLoading = ValueNotifier(false);
  bool hasError = false;

  callAdressRepository() async {
    isLoading.value = true;
    try {
      final resultCep =
          await adressRepository.getAdress(cepTextController.text);
      cepTextController.text = resultCep.cep;
      ruaTextController.text = resultCep.logradouro;
      bairroTextController.text = resultCep.bairro;
      cidadeTextController.text = resultCep.localidade;
    } catch (e) {
      hasError = true;
    }

    isLoading.value = false;
  }

  onTapRegisterAdress(context) async {
    if (cepTextController.text.isNotEmpty &&
        ruaTextController.text.isNotEmpty &&
        bairroTextController.text.isNotEmpty &&
        cidadeTextController.text.isNotEmpty &&
        compleTextController.text.isNotEmpty &&
        numTextController.text.isNotEmpty) {
      final adress = AdressEntity(
          bairro: bairroTextController.text,
          cidade: cidadeTextController.text,
          rua: ruaTextController.text,
          numero: numTextController.text,
          cep: cepTextController.text,
          complemento: compleTextController.text);

      final result =
          await adressRepository.registerAdressFirestore(adress, userId!);

      final snackBar = SnackBar(
        content: Text(result ? "Cadastro com sucesso" : "Falha no cadastro"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      if (result) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      }
    } else {
      final snackBar = SnackBar(
        content: Text("Preencha todos os campos"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void onChangedCep(String value) {
    final cep = value.replaceAll(RegExp("[^0-9]"), '');
    if (cep.length == 8) {
      callAdressRepository();
    }
  }
}
