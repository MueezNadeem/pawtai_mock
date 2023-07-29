import 'package:flutter/material.dart';

import '../../../common/colors/bg_color.dart';

AppBar myPawtaiAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: bgColor(),
    title: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Pawtai",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "Log out",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ],
    ),
  );
}
