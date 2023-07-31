import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

AppBar calendarAppbar() {
  return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: bgColor(),
      title: const Text(
        "Calendar",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
