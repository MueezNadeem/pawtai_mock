import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/widgets/bottom_navbar.dart';
import 'package:pawtai_mockup/features/homepage_calendar/widgets/calendar_appbar.dart';
import 'package:pawtai_mockup/features/homepage_calendar/widgets/calendar_top_row.dart';

import '../widgets/calendar_calendarview.dart';
import '../widgets/calendar_event_list.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CalendarAppbar(),
      bottomNavigationBar: const BottomNavbar(2),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CalendarTopRow(),
            const CalendarCalendarView(),
            const Divider(
              thickness: 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
                  child: Text(
                    "Upcoming ",
                    style: TextStyle(
                        color: bgColor(),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const CalendarEvents()
          ],
        ),
      ),
    );
  }
}
