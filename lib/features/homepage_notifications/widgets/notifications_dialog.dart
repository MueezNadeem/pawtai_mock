import 'package:flutter/material.dart';

class NotificationsDialog extends StatefulWidget {
  const NotificationsDialog({super.key});

  @override
  State<NotificationsDialog> createState() => _NotificationsDialogState();
}

class _NotificationsDialogState extends State<NotificationsDialog> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Column(
          children: [
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Notification Settings",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Stop Receiving This Notification",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Delete This Notification",
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Cancel",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
