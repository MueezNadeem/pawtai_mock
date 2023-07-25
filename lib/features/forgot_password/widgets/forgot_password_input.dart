import 'package:flutter/material.dart';

import '../../../common/colors/bg_color.dart';

class ForgotPasswordInput extends StatefulWidget {
  const ForgotPasswordInput({super.key});

  @override
  State<ForgotPasswordInput> createState() => _ForgotPasswordInputState();
}

class _ForgotPasswordInputState extends State<ForgotPasswordInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: SizedBox(
          height: 60,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.email_outlined,
                      color: bgColor(),
                    ),
                  ),
                  hintText: "Email*",
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
          ),
        ));
  }
}
