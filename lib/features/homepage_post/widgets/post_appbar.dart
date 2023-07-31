import 'package:flutter/material.dart';

import '../../../common/colors/bg_color.dart';

AppBar postAppbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: bgColor(),
    title: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Post",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          "Publish",
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}
