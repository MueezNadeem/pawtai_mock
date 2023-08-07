import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/button_colors.dart';
import 'package:pawtai_mockup/common/firebase/sign_in.dart';
import 'package:pawtai_mockup/features/forgot_password/screens/forgot_password_screen.dart';
import 'package:pawtai_mockup/features/homepage/screens/home_screen.dart';
import 'package:pawtai_mockup/features/sign_up/screens/sign_up_screen.dart';

import '../../../common/widgets/or_spacer.dart';

class SignInButtons extends StatefulWidget {
  const SignInButtons(this.uNameController, this.passwordController,
      {super.key});
  final TextEditingController uNameController;
  final TextEditingController passwordController;
  @override
  State<SignInButtons> createState() => _SignInButtonsState();
}

class _SignInButtonsState extends State<SignInButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 40, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ForgotPasswordScreen();
                    },
                  ));
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 14,
                      wordSpacing: 2,
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
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
                onPressed: () {
                  SignInToAccount.signIn(widget.uNameController.text,
                          widget.passwordController.text)
                      .then((value) {
                    if (value == true) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Wrong credentials")));
                    }
                  });
                },
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ));
                },
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
