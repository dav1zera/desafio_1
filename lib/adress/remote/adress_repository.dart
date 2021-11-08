import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_1/commons/entities/adress_entity.dart';
import 'package:desafio_1/adress/entities/result_cep.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AdressRepository {
  final FirebaseFirestore firestore;

  AdressRepository({required this.firestore});
  Future<ResultCep> getAdress(String cep) async {
    try {
      Response result =
          await http.get(Uri.parse("https://viacep.com.br/ws/${cep}/json/"));
      return ResultCep.fromJson(result.body);
    } catch (e) {
      throw Exception();
    }
  }

  Future<bool> registerAdressFirestore(AdressEntity adress, String uid) async {
    try {
      await firestore.collection("users").doc(uid).set({
        "adress": adress.toMap(),
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
