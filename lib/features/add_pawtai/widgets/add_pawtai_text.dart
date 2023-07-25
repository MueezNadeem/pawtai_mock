import 'package:flutter/material.dart';

class AddPawtaiText extends StatelessWidget {
  const AddPawtaiText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Add a Pawtai.",
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Text(
            "Create a new Pawtai for others to join!",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
