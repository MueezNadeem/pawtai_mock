import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/sign_in/screens/sign_in_screen.dart';

import '../../../common/colors/bg_color.dart';

AppBar myPawtaiAppbar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: bgColor(),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "My Pawtai",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const SignInScreen();
              },
            ));
          },
          child: const Text(
            "Log out",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
