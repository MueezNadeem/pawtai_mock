import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pawtai_mockup/common/helpers/calendar_datasource.dart';
import 'package:pawtai_mockup/common/helpers/calendar_events.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  List<Meeting> meetings = [];

  @override
  void initState() {
    meetings = getDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: meetings.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle),
              height: 40,
              width: 40,
              child: Image.asset(
                  'assets/images/charles-deluvio-Mv9hjnEUHR4-unsplash@3x.png'),
            ),
            title: Text(meetings[index].eventName),
            subtitle: Text(DateFormat.yMMMEd().format(meetings[index].from)),
          );
        },
      ),
    );
    ();
  }
}
