import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pawtai_mockup/common/models/event.dart';
import 'package:pawtai_mockup/features/homepage_calendar/controller/event_retriever.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  List<Event> meetings = [];
  late User _user;
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
        meetings = EventRetriever().callGetEvents(_user.email!);
      });
    });
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
            title: Text(meetings[index].subject),
            subtitle:
                Text(DateFormat.yMMMEd().format(meetings[index].startTime)),
          );
        },
      ),
    );
  }
}
