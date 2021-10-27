import 'package:desafio_1/commons/entities/user_info.dart';
import 'package:desafio_1/commons/entities/user_register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  final FirebaseAuth auth;

  LoginRepository({required this.auth});

  Future<UserInfoData?> loginWithEmail(UserData user) async {
    try {
      UserCredential userCredentialFirebase =
          await auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      final userInfo = UserInfoData(
        uid: userCredentialFirebase.user!.uid,
        name: userCredentialFirebase.user!.displayName!,
        email: userCredentialFirebase.user!.email!,
      );
      return userInfo;
    } catch (_) {
      return null;
    }
  }
}
