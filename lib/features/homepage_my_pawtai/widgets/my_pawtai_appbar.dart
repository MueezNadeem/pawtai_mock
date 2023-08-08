import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/sign_in/screens/sign_in_screen.dart';

import '../../../common/colors/bg_color.dart';

class MyPawtaiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyPawtaiAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
