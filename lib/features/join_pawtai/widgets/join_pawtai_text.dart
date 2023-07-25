import 'package:flutter/material.dart';

class JoinPawtaiText extends StatelessWidget {
  const JoinPawtaiText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Text(
            "Join a Pawtai",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
          child: Text(
            "Already have a code? Join an existing Pawtai",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
