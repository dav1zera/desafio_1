import 'dart:convert';

class UserInfoData {
  final String uid;
  final String name;
  final String email;

  UserInfoData({
    required this.uid,
    required this.name,
    required this.email,
  });

  factory UserInfoData.fromJson(String str) =>
      UserInfoData.fromMap(json.decode(str));

  factory UserInfoData.fromMap(Map<String, dynamic> json) => UserInfoData(
        uid: json["uid"],
        name: json["nome"] ?? "",
        email: json["email"] ?? "",
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "uid": uid,
        "nome": name,
        "email": email,
      };
}
