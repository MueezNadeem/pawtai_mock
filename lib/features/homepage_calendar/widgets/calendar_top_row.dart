import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/add_event/screens/add_event_screen.dart';

class CalendarTopRow extends StatelessWidget {
  const CalendarTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton.small(
            backgroundColor: bgColor(),
            elevation: 0,
            child: const Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const AddEventScreen();
                },
              ));
            })
      ]),
    );
  }
}
