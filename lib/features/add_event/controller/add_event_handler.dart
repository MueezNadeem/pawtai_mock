import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class EventHandler {
  final url = "http://192.168.100.155:5000/AddEvent";

  Future<void> addEvent(
      String title,
      String date,
      String time,
      String pawtaiID,
      bool recurring,
      String recurringVal,
      List<bool> recValues,
      String userEmail) async {
    Map<String, String> request = {
      "event_title": title,
      "event_date": date,
      "event_time": time,
      "recurrence": recurring.toString(),
      "recurringVal": recurringVal,
      "pawtaiID": pawtaiID,
      "userEmail": userEmail,
      "recurrence_rule": parsetoRule(date, recValues, recurringVal)
    };
    final headers = {'Content-Type': 'application/json'};
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
  }

  String parsetoRule(String date, List<bool> values, String recurringVal) {
    List<String> weekdays = ['MO', 'TU', 'WE', 'TH', 'FR', 'SA', 'SU'];
    List<String> selectedWeekdays = [];
    String rule = "";
    late String freq;
    DateTime dt = DateFormat("yMMMEd").parse(date);
    if (recurringVal == "Weekly") {
      freq = "WEEKLY";
      for (int i = 0; i < values.length; i++) {
        if (values[i]) {
          selectedWeekdays.add(weekdays[i]);
        }
      }
      rule = "FREQ=$freq;BYDAY=${selectedWeekdays.join(',')}";
    } else {
      freq = "MONTHLY";
      rule = "FREQ=$freq;BYMONTHDAY=${dt.day}";
    }
    return rule;
  }
}
