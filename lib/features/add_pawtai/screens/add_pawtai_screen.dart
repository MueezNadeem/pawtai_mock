import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/add_pawtai/widgets/add_pawtai_buttons.dart';
import 'package:pawtai_mockup/features/add_pawtai/widgets/add_pawtai_text.dart';

import '../widgets/add_pawtai_inputs.dart';

class AddPawtaiScreen extends StatefulWidget {
  const AddPawtaiScreen({super.key});

  @override
  State<AddPawtaiScreen> createState() => _AddPawtaiScreenState();
}

class _AddPawtaiScreenState extends State<AddPawtaiScreen> {
  late TextEditingController pawtaiNameController;
  late File imageFile;
  @override
  void initState() {
    super.initState();
    pawtaiNameController = TextEditingController();
    imageFile = File("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AddPawtaiText(),
              AddPawtaiInput(pawtaiNameController, imageFile),
              AddPawtaiButtons(pawtaiNameController)
            ],
          ),
        ),
      ),
    );
  }
}
