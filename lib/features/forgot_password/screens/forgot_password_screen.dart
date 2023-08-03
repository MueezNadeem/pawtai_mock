import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/forgot_password/widgets/forgot_password_button.dart';
import 'package:pawtai_mockup/common/widgets/back_navigation_button.dart';
import 'package:pawtai_mockup/features/forgot_password/widgets/forgot_password_text.dart';

import '../widgets/forgot_password_input.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController email;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      appBar: AppBar(
        leading: const BackNavigationButton(),
        backgroundColor: bgColor(),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ForgotPasswordText(),
              ForgotPasswordInput(email),
              ForgotPasswordButtons(email)
            ],
          ),
        ),
      ),
    );
  }
}
