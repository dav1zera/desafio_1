import 'package:desafio_1/adress/remote/adress_repository.dart';
import 'package:flutter/material.dart';
//final FirebaseAuth auth;

class AdressController {
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
          await AdressRepository().getAdress(cepTextController.text);
      cepTextController.text = resultCep.cep;
      ruaTextController.text = resultCep.logradouro;
      bairroTextController.text = resultCep.bairro;
      cidadeTextController.text = resultCep.localidade;
    } catch (e) {
      hasError = true;
    }

    isLoading.value = false;
  }

  void onChangedCep(String value) {
    final cep = value.replaceAll(RegExp("[^0-9]"), '');
    if (cep.length == 8) {
      callAdressRepository();
    }
  }
}
