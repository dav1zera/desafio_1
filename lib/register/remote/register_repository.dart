import 'package:desafio_1/commons/entities/user_register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepository {
  final FirebaseAuth auth;

  RegisterRepository({
    required this.auth,
  });

  Future <bool> createUserEmail(UserData user ) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: user.email, password: user.password );
      print(auth.currentUser);
      await userCredential.user!.updateDisplayName(user.name);
       print(auth.currentUser);
      return true;
    } catch (_) {
      return false;
    }
  }
}     
    


    

