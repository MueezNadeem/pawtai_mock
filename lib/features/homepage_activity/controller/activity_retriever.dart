import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pawtai_mockup/common/models/activity.dart';

class ActivityRetriever {
  final url = 'http://192.168.100.155:5000/GetPosts';

  List<Activity> callGetActivities(String user) {
    List<Activity> temp = List.empty();
    getActivities(user).then((value) {
      temp = value;
    });
    return temp;
  }

  Future<List<Activity>> getActivities(String user) async {
    List<Activity> temp = List.empty();
    Map<String, String> request = {"user_name": user};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));

    List<Activity> activityList = (jsonDecode(response.body) as List)
        .map((data) => Activity.fromJson(data))
        .toList();

    temp = activityList;
    return temp;
  }
}
