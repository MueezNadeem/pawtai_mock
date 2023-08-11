import 'package:pawtai_mockup/common/models/activity.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class LikeHandler {
  final url = 'http://192.168.100.100:5000/HandleLikes';

  void callHandleLike(Activity a) {
    handleLike(a).then((value) {});
  }

  Future<void> handleLike(Activity activity) async {
    Map<String, String> request = {
      "user_name": activity.userId.toString(),
      "activity_id": activity.activityId.toString()
    };
    final headers = {'Content-Type': 'application/json'};
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
  }
}
