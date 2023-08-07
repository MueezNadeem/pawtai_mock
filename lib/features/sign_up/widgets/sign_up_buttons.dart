import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/firebase/create_account.dart';
import 'package:pawtai_mockup/features/add_pawtai/screens/add_pawtai_screen.dart';
import 'package:pawtai_mockup/features/sign_in/screens/sign_in_screen.dart';
import 'package:pawtai_mockup/features/sign_up/controller/sign_up_controller.dart';

import '../../../common/colors/button_colors.dart';
import '../../../common/widgets/or_spacer.dart';

class SignUpButtons extends StatefulWidget {
  const SignUpButtons(this.eController, this.uController, this.pController,
      {super.key});

  final TextEditingController eController;
  final TextEditingController uController;
  final TextEditingController pController;

  @override
  State<SignUpButtons> createState() => _SignUpButtonsState();
}

class _SignUpButtonsState extends State<SignUpButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                onPressed: () async {
                  CreateUserAccount.createAcc(
                      widget.eController.text, widget.pController.text);
                  SignUpController().callAddUser(widget.uController.text,
                      widget.eController.text, widget.pController.text);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const AddPawtaiScreen();
                    },
                  ));
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      letterSpacing: 0.2, fontSize: 14, color: Colors.white),
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
                      return const SignInScreen();
                    },
                  ));
                },
                child: const Text(
                  "Already have an Account",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
