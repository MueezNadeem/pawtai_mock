import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/widgets/back_navigation_button.dart';
import 'package:pawtai_mockup/features/confirm_join_pawtai/widgets/confirm_join_pawtai_buttons.dart';
import 'package:pawtai_mockup/features/confirm_join_pawtai/widgets/confirm_join_pawtai_container.dart';
import 'package:pawtai_mockup/features/confirm_join_pawtai/widgets/confirm_join_pawtai_text.dart';

class ConfirmJoinPawtaiScreen extends StatefulWidget {
  const ConfirmJoinPawtaiScreen({super.key});

  @override
  State<ConfirmJoinPawtaiScreen> createState() =>
      _ConfirmJoinPawtaiScreenState();
}

class _ConfirmJoinPawtaiScreenState extends State<ConfirmJoinPawtaiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackNavigationButton(),
        backgroundColor: bgColor(),
      ),
      backgroundColor: bgColor(),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConfirmJoinPawtaiText(),
          ConfirmJoinPawtaiContainer(),
          ConfirmJoinPawtaiButtons(),
        ],
      )),
    );
  }
}
