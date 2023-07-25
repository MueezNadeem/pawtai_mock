import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/signin_color.dart';

import '../../../common/widgets/or_spacer.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 40, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 14,
                    wordSpacing: 2,
                    color: Colors.black,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(10),
                    backgroundColor:
                        MaterialStatePropertyAll(buttonColorBlack())),
                onPressed: () {},
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
        const OrSpacer(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(buttonColorTransparent())),
                onPressed: () {},
                child: const Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }

  Flexible signInSpacer() {
    return const Flexible(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Divider(
          thickness: 0.4,
          color: Colors.white,
        ),
      ),
    );
  }
}
