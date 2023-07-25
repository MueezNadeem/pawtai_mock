import 'package:flutter/material.dart';

class ConfirmJoinPawtaiText extends StatelessWidget {
  const ConfirmJoinPawtaiText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Verify Pawtai",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Is this the correct Pawtai you want to join?",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
