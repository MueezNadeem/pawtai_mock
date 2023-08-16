import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../common/models/event.dart';

class EventRetriever {
  final url = "http://192.168.100.155:5000/GetEvents";

  List<Event> callGetEvents(String user) {
    List<Event> temp = List.empty();
    getEvents(user).then((value) {
      temp = value;
    });
    return temp;
  }

  Future<List<Event>> getEvents(String user) async {
    List<Event> temp = List.empty();
    Map<String, String> request = {"userEmail": user};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));

    List<Event> eventList = (jsonDecode(response.body) as List)
        .map((data) => Event.fromJson(data))
        .toList();

    temp = eventList;
    return temp;
  }
}
