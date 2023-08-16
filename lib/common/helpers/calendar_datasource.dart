import 'package:pawtai_mockup/common/models/event.dart';

List<Event> getDataSource() {
  final List<Event> meetings = <Event>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day);
  final DateTime endTime = startTime.add(const Duration(days: 20));
  meetings.add(Event(
      endTime: endTime,
      startTime: startTime,
      recurrenceRule: 'FREQ=DAILY;',
      subject: 'Conference'));
  return meetings;
}
