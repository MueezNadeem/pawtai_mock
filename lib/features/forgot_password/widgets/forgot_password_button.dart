import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/button_colors.dart';

class ForgotPasswordButtons extends StatelessWidget {
  const ForgotPasswordButtons({super.key});

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
            onPressed: () {},
            child: const Text(
              "Send Reset Link",
              style: TextStyle(fontSize: 16),
            )),
      ),
    );
  }
}
