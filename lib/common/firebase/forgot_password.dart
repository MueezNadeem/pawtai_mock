import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword {
  static Future<void> sendPasswordResetMail() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: "mueeznadeem@gmail.com");
  }
}
