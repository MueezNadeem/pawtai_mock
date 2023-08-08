import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/widgets/bottom_navbar.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_appbar.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_list.dart';

class MyPawtaiScreen extends StatefulWidget {
  const MyPawtaiScreen({super.key});

  @override
  State<MyPawtaiScreen> createState() => _MyPawtaiScreenState();
}

class _MyPawtaiScreenState extends State<MyPawtaiScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: MyPawtaiAppBar(),
        bottomNavigationBar: BottomNavbar(4),
        body: MyPawtaiList());
  }
}
