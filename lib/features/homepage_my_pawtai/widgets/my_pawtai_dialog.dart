import 'package:flutter/material.dart';

class MyPawtaiDialog extends StatelessWidget {
  const MyPawtaiDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Column(
          children: [
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Add/Join Pawtai",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Add New Pawtai",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Join this Pawtai",
                style: TextStyle(color: Colors.blue, fontSize: 18),
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
