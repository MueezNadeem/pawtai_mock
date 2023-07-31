import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/add_pawtai/screens/add_pawtai_screen.dart';
import 'package:pawtai_mockup/features/join_pawtai/screens/join_pawtai_screen.dart';

class MyPawtaiDialog extends StatelessWidget {
  const MyPawtaiDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            const ListTile(
              title: Text(
                textAlign: TextAlign.center,
                "Add/Join Pawtai",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const AddPawtaiScreen();
                  },
                ));
              },
              title: const Text(
                textAlign: TextAlign.center,
                "Add New Pawtai",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const JoinPawtaiScreen();
                  },
                ));
              },
              title: const Text(
                textAlign: TextAlign.center,
                "Join Pawtai",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text(
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
