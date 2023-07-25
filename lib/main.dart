import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/sign_in/screens/sign_in_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SignInScreen());
  }
}
