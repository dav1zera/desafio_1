import 'package:desafio_1/adress/entities/result_cep.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AdressRepository {
  //AdressRepository._();
  Future<ResultCep> getAdress(String cep) async {
    Response result =
        await http.get(Uri.parse("https://viacep.com.br/ws/${cep}/json/"));
    return ResultCep.fromJson(result.body);
  }
}
