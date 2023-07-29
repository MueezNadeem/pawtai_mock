import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_edit_profile.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyPawtaiEditProfile());
  }
}
