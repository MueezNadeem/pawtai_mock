import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage/widgets/activity_dialog_reply.dart';

import 'activity_dialog_likes.dart';

class ActivityDialogBox extends StatefulWidget {
  const ActivityDialogBox({super.key});

  @override
  State<ActivityDialogBox> createState() => _ActivityDialogBoxState();
}

class _ActivityDialogBoxState extends State<ActivityDialogBox> {
  List<bool> selected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
      height: 360,
      child: Column(
        children: [
          Center(
            child: ToggleButtons(
                direction: Axis.horizontal,
                isSelected: selected,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderColor: bgColor(),
                selectedColor: Colors.white,
                fillColor: bgColor(),
                constraints: const BoxConstraints(
                  minHeight: 24.0,
                  minWidth: 48.0,
                ),
                onPressed: (index) {
                  setState(() {
                    for (int i = 0; i < selected.length; i++) {
                      selected[i] = (i == index);
                    }
                  });
                },
                children: const [
                  Text("Reply"),
                  Text("Likes"),
                ]),
          ),
          if (selected[0])
            const ActivityReplyDialog()
          else
            const ActivityLikesDialog()
        ],
      ),
    ));
  }
}
