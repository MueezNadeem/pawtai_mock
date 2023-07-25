import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/add_pawtai/screens/add_pawtai_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: AddPawtaiScreen());
  }
}
