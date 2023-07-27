import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/helpers/calendar_datasource.dart';
import 'package:pawtai_mockup/common/helpers/calendar_events.dart';
import 'package:syncfusion_flutter_calendar/src/calendar/common/event_args.dart';

class CalendarDialog extends StatefulWidget {
  CalendarDialog({required this.calendarTapDetails, super.key});
  CalendarLongPressDetails calendarTapDetails;
  @override
  State<CalendarDialog> createState() => _CalendarDialogState();
}

class _CalendarDialogState extends State<CalendarDialog> {
  late CalendarLongPressDetails _calendarTapDetails;
  List<Meeting> meetings = List.empty();
  @override
  void initState() {
    meetings = getDataSource();
    _calendarTapDetails = widget.calendarTapDetails;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8, left: 16),
              child: Text(
                DateFormat.yMMMd().format(_calendarTapDetails.date!),
                style: TextStyle(
                    letterSpacing: 0.4,
                    color: bgColor(),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: meetings.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                            'assets/images/kabo-BHJs5TZ-Nt0-unsplash-2.png')),
                    title: Text(meetings[index].eventName),
                    subtitle:
                        Text(DateFormat.yMMMEd().format(meetings[index].from)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
