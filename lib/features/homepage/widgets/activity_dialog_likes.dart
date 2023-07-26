import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class ActivityLikesDialog extends StatefulWidget {
  const ActivityLikesDialog({super.key});

  @override
  State<ActivityLikesDialog> createState() => _ActivityLikesDialogState();
}

class _ActivityLikesDialogState extends State<ActivityLikesDialog> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return ListTile(
          leading: SizedBox(
            width: 280,
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: bgColor(), shape: BoxShape.circle),
                  height: 40,
                  width: 40,
                  child: const Center(
                    child: Text(
                      "M",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Mueez Nadeem",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
