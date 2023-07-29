import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_dialog.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_list.dart';

class MyPawtaiScreen extends StatefulWidget {
  const MyPawtaiScreen({super.key});

  @override
  State<MyPawtaiScreen> createState() => _MyPawtaiScreenState();
}

class _MyPawtaiScreenState extends State<MyPawtaiScreen> {
  @override
  Widget build(BuildContext context) {
    return MyPawtaiList();
  }
}
