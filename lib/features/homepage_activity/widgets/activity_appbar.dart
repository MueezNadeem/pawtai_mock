import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class ActivityAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ActivityAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: bgColor(),
      title: const Text("Activity"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
