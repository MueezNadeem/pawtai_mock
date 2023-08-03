import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class SignInInputs extends StatefulWidget {
  SignInInputs(this.uNameController, this.passwordController, {super.key});
  TextEditingController uNameController;
  TextEditingController passwordController;
  @override
  State<SignInInputs> createState() => _SignInInputsState();
}

class _SignInInputsState extends State<SignInInputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: TextField(
                      controller: widget.uNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(
                            Icons.book,
                            color: bgColor(),
                          ),
                        ),
                        hintText: "Username or Email",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: TextField(
                      controller: widget.passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Icon(
                            Icons.lock,
                            color: bgColor(),
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
