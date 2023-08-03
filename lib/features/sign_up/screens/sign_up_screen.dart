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
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor(),
        leading: const BackNavigationButton(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SignUpLogo(),
              const SignUpText(),
              SignUpInputs(
                  emailController, usernameController, passwordController),
              SignUpButtons(
                  emailController, usernameController, passwordController)
            ],
          ),
        ),
      ),
    );
  }
}
