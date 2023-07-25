import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/sign_in/widgets/sign_in_buttons.dart';
import 'package:pawtai_mockup/features/sign_in/widgets/sign_in_inputs.dart';
import 'package:pawtai_mockup/features/sign_in/widgets/sign_in_logo.dart';
import 'package:pawtai_mockup/features/sign_in/widgets/sign_in_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SignInLogo(),
            SignInText(),
            SignInInputs(),
            SignInButtons()
          ]),
        ),
      ),
    );
  }
}
