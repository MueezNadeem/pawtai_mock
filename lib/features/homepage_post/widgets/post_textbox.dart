import 'package:flutter/material.dart';

class PostTextBox extends StatefulWidget {
  const PostTextBox(this.postController, {super.key});
  final TextEditingController postController;
  @override
  State<PostTextBox> createState() => _PostTextBoxState();
}

class _PostTextBoxState extends State<PostTextBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: widget.postController,
            maxLines: 20,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "What would you like to let your Pawtai know?",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 28)),
          ),
        )
      ],
    );
  }
}
