import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/widgets/back_navigation_button.dart';
import 'package:pawtai_mockup/features/sign_up/widgets/sign_up_buttons.dart';
import 'package:pawtai_mockup/features/sign_up/widgets/sign_up_inputs.dart';
import 'package:pawtai_mockup/features/sign_up/widgets/sign_up_logo.dart';
import 'package:pawtai_mockup/features/sign_up/widgets/sign_up_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor(),
        leading: const BackNavigationButton(),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SignUpLogo(),
              SignUpText(),
              SignUpInputs(),
              SignUpButtons()
            ],
          ),
        ),
      ),
    );
  }
}
