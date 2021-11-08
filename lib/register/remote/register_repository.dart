import 'package:desafio_1/commons/entities/user_register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepository {
  final FirebaseAuth auth;

  RegisterRepository({
    required this.auth,
  });

  Future<String?> createUserEmail(UserData user) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: user.email, password: user.password);

      await userCredential.user!.updateDisplayName(user.name);

      return auth.currentUser!.uid;
    } catch (_) {
      return null;
    }
  }
}
