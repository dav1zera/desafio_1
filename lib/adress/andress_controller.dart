import 'package:desafio_1/adress/remote/adress_repository.dart';
import 'package:flutter/material.dart';

class AdressController {
  TextEditingController ruaTextController = TextEditingController();
  TextEditingController cepTextController = TextEditingController();
  TextEditingController bairroTextController = TextEditingController();
  TextEditingController cidadeTextController = TextEditingController();
  TextEditingController numTextController = TextEditingController();
  TextEditingController compleTextController = TextEditingController();

  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  callAdressRepository() async {
    isLoading.value = true;
    final resultCep =
        await AdressRepository().getAdress(cepTextController.text);

    cepTextController.text = resultCep.cep;
    ruaTextController.text = resultCep.logradouro;
    bairroTextController.text = resultCep.bairro;
    cidadeTextController.text = resultCep.localidade;
    isLoading.value = false;
  }
}
