import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/forgot_password/screens/forgot_password_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ForgotPasswordScreen());
  }
}
