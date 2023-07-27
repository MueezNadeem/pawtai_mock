import 'package:flutter/material.dart';

class PostTextBox extends StatefulWidget {
  const PostTextBox({super.key});

  @override
  State<PostTextBox> createState() => _PostTextBoxState();
}

class _PostTextBoxState extends State<PostTextBox> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 20,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "What would you like to let your Pawtai know?",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 28)),
          ),
        )
      ],
    );
  }
}
