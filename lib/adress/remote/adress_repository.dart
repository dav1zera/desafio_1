import 'package:desafio_1/adress/entities/result_cep.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AdressRepository {
  Future<ResultCep> getAdress(String cep) async {
    try {
      Response result =
          await http.get(Uri.parse("https://viacep.com.br/ws/${cep}/json/"));
      return ResultCep.fromJson(result.body);
    } catch (e) {
      throw Exception();
    }
  }
}
