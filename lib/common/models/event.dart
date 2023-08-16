import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Event extends Appointment {
  Event(
      {required super.startTime,
      required super.endTime,
      super.recurrenceRule,
      super.subject});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
        startTime: DateFormat("EEE, d MMM y HH:mm:ss 'GMT'")
            .parseUtc(json['datetime']),
        endTime: DateFormat("EEE, d MMM y HH:mm:ss 'GMT'")
            .parseUtc(json['datetime']),
        subject: json['title'],
        recurrenceRule: json['recurrence_rule']);
  }
}
