import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/bg_color.dart';
import 'package:pawtai_mockup/features/forgot_password/widgets/forgot_password_button.dart';
import 'package:pawtai_mockup/features/forgot_password/widgets/forgot_password_navigationbutton.dart';
import 'package:pawtai_mockup/features/forgot_password/widgets/forgot_password_text.dart';

import '../widgets/forgot_password_input.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      appBar: AppBar(
        leading: const ForgotPasswordNavigationButton(),
        backgroundColor: bgColor(),
        elevation: 0,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ForgotPasswordText(),
            ForgotPasswordInput(),
            ForgotPasswordButtons()
          ],
        ),
      ),
    );
  }
}
