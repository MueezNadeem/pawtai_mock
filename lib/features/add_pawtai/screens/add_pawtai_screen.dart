import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/add_pawtai/widgets/add_pawtai_buttons.dart';
import 'package:pawtai_mockup/features/add_pawtai/widgets/add_pawtai_text.dart';

import '../widgets/add_pawtai_inputs.dart';

class AddPawtaiScreen extends StatelessWidget {
  const AddPawtaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AddPawtaiText(), AddPawtaiInput(), AddPawtaiButtons()],
          ),
        ),
      ),
    );
  }
}
