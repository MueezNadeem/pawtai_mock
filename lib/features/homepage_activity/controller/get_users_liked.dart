import 'dart:convert';

import 'package:http/http.dart' as http;

class UsernamesWhoLikedRetriever {
  final url = 'http://192.168.100.51:5000/GetLikedUsers';

  List<String> callGetUsersWhoLiked(String activityid) {
    List<String> userList = List.empty();
    getUsersWhoLiked(activityid).then((value) {
      userList = value;
    });
    return userList;
  }

  Future<List<String>> getUsersWhoLiked(String activityid) async {
    List<String> temp = List.empty();
    Map<String, String> request = {"activity_id": activityid};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    List<String> userNames = (jsonDecode(response.body) as List)
        .map((json) => json['user_name'] as String)
        .toList();

    temp = userNames;
    return temp;
  }
}
