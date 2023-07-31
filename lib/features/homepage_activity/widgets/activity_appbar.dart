import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

AppBar activityAppbar() {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: bgColor(),
    title: const Text("Activity"),
  );
}
