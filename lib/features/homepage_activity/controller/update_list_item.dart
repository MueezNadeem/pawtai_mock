import 'package:pawtai_mockup/common/models/activity.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListItemUpdate {
  final url = 'http://192.168.100.155:5000/GetNumLikes';

  Future<Activity> updateWidget(Activity activity) async {
    getLikes(activity).then((value) {
      activity.setNumLikes(value);
    });

    return activity;
  }

  Future<int> getLikes(Activity activity) async {
    Map<String, String> request = {
      "activity_id": activity.activityId.toString()
    };
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    int val = int.parse(response.body);
    return val;
  }
}
