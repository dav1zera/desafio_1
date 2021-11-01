import 'package:firebase_auth/firebase_auth.dart';

class WelcomeRepository {
  final FirebaseAuth auth;

  WelcomeRepository({
    required this.auth,
  });

  Future<void> signOut() async {
    await auth.signOut();
  }
}
