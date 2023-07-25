import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/widgets/back_navigation_button.dart';
import 'package:pawtai_mockup/features/join_pawtai/widgets/join_pawtai_buttons.dart';
import 'package:pawtai_mockup/features/join_pawtai/widgets/join_pawtai_input.dart';

import '../widgets/join_pawtai_text.dart';

class JoinPawtaiScreen extends StatelessWidget {
  const JoinPawtaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      appBar: AppBar(
        elevation: 0,
        leading: const BackNavigationButton(),
        backgroundColor: bgColor(),
      ),
      body: const Center(
          child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          JoinPawtaiText(),
          JoinPawtaiInput(),
          JoinPawtaiButtons()
        ]),
      )),
    );
  }
}
