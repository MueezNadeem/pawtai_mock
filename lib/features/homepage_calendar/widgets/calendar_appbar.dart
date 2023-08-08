import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class CalendarAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CalendarAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: bgColor(),
        title: const Text(
          "Calendar",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
