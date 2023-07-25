import 'package:flutter/material.dart';

import '../../../common/colors/bg_color.dart';

class SignUpInputs extends StatefulWidget {
  const SignUpInputs({super.key});

  @override
  State<SignUpInputs> createState() => _SignUpInputsState();
}

class _SignUpInputsState extends State<SignUpInputs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
            child: SizedBox(
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.contact_page,
                          color: bgColor(),
                        ),
                      ),
                      hintText: "Username*",
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
            child: SizedBox(
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.mail,
                          color: bgColor(),
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
            child: SizedBox(
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.lock,
                          color: bgColor(),
                        ),
                      ),
                      hintText: "Password*",
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
