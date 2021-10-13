import 'package:desafio_1/adress/entities/result_cep.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class AdressRepository {
  //AdressRepository._();
  getAdress() async {
    await Future.delayed(Duration(seconds: 10));
    Response result =
        await http.get(Uri.parse("https://viacep.com.br/ws/29102905/json/"));
    return json.decode(result.body);
  }
}
