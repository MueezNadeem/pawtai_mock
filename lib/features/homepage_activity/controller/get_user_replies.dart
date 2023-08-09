import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pawtai_mockup/models/reply.dart';

class UsernamesWhoLikedRetriever {
  final url = 'http://192.168.100.51:5000/GetReplies';

  List<Reply> callGetUsersWhoReplied(String activityid) {
    List<Reply> replyList = List.empty();
    getUsersWhoReplied(activityid).then((value) {
      replyList = value;
    });
    return replyList;
  }

  Future<List<Reply>> getUsersWhoReplied(String activityid) async {
    List<Reply> temp = List.empty();
    Map<String, String> request = {"activity_id": activityid};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));

    List<Reply> replyList = (jsonDecode(response.body) as List)
        .map((data) => Reply.fromJson(data))
        .toList();
    temp = replyList;
    return temp;
  }
}
