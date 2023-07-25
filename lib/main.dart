import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/confirm_join_pawtai/screens/confirm_join_pawtai_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ConfirmJoinPawtaiScreen());
  }
}
