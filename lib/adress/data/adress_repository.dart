import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AdressRepository {
  //AdressRepository._();
  getAdress() async {
    Response result =
        await http.get(Uri.parse("https://viacep.com.br/ws/39878000/json"));
    print(result.body);
  }
}
