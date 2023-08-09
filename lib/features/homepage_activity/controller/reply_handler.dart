import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:pawtai_mockup/models/activity.dart';

class ReplyHandler {
  final url = 'http://192.168.100.51:5000/AddReply';

  void callReplyPost(String content, Activity activity, User user) {
    _addReplyController(content, activity, user).then((value) => null);
  }

  Future<void> _addReplyController(
      String content, Activity activity, User user) async {
    if (content.isEmpty) {
      return;
    }
    Map<String, String> request = {
      "content": content,
      "user_email": user.email.toString(),
      "activity_id": activity.activityId.toString()
    };

    final headers = {'Content-Type': 'application/json'};
    //final response =
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    //Map<String, dynamic> responsePayload = json.decode(response.body);
  }
}
