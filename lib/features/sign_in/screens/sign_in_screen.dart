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
  late TextEditingController uName;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    uName = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const SignInLogo(),
            const SignInText(),
            SignInInputs(uName, password),
            SignInButtons(uName, password)
          ]),
        ),
      ),
    );
  }
}
