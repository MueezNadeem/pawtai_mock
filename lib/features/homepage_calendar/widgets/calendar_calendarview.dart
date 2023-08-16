import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/helpers/calendar_events.dart';
import 'package:pawtai_mockup/features/homepage_calendar/controller/event_retriever.dart';
import 'package:pawtai_mockup/features/homepage_calendar/widgets/calendar_dialog.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarCalendarView extends StatefulWidget {
  const CalendarCalendarView({super.key});

  @override
  State<CalendarCalendarView> createState() => _CalendarCalendarViewState();
}

class _CalendarCalendarViewState extends State<CalendarCalendarView> {
  late User _user;
  late CalendarDataSource calendarDataSource;
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
        calendarDataSource =
            MeetingDataSource(EventRetriever().callGetEvents(_user.email!));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SfCalendar(
        onLongPress: (calendarTapDetails) {
          showDialog(
            context: context,
            builder: (context) {
              return CalendarDialog(calendarTapDetails: calendarTapDetails);
            },
          );
        },
        cellBorderColor: Colors.transparent,
        selectionDecoration:
            BoxDecoration(border: Border.all(color: bgColor(), width: 1.5)),
        todayHighlightColor: bgColor(),
        showTodayButton: true,
        headerStyle: CalendarHeaderStyle(
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: bgColor())),
        view: CalendarView.month,
        dataSource: calendarDataSource,
      ),
    );
  }
}
