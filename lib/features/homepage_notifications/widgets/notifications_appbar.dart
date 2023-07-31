import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_settings.dart';

AppBar notificationsAppbar(BuildContext context) {
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
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const NotificationSettings();
              },
            ));
          },
        ),
      ],
    ),
  );
}
