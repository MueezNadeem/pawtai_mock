import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

AppBar activityAppbar() {
  return AppBar(
    backgroundColor: bgColor(),
    title: const Text("Activity"),
  );
}
