import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

AppBar notificationsAppbar() {
  return AppBar(
    backgroundColor: bgColor(),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        IconButton(
          icon: const Icon(
            Icons.settings,
            size: 32,
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
