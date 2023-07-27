import 'package:flutter/material.dart';

class PostDialog extends StatefulWidget {
  const PostDialog({super.key});

  @override
  State<PostDialog> createState() => _PostDialogState();
}

class _PostDialogState extends State<PostDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 160,
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                            'assets/images/kabo-BHJs5TZ-Nt0-unsplash-2.png')),
                    title: Text("Pawtai $index"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
