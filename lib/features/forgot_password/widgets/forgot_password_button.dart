import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/button_colors.dart';
import 'package:pawtai_mockup/common/firebase/forgot_password.dart';

class ForgotPasswordButtons extends StatelessWidget {
  ForgotPasswordButtons(this.emailController, {super.key});
  TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: FilledButton(
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(10),
                backgroundColor: MaterialStatePropertyAll(buttonColorBlack())),
            onPressed: () {
              ForgotPassword.sendPasswordResetMail();
            },
            child: const Text(
              "Send Reset Link",
              style: TextStyle(fontSize: 16),
            )),
      ),
    );
  }
}
