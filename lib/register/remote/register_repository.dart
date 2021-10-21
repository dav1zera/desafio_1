import 'package:desafio_1/register/entities/user_register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepository {
  final FirebaseAuth auth;

  RegisterRepository({
    required this.auth,
  });

  createUserEmail(UserRegister user) {}
}
