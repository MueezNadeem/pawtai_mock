import 'package:http/http.dart' as http;
import 'dart:convert';

class AddPostController {
  final url = 'http://192.168.100.100:5000/AddPost';

  void callAddPost(String content, String user, String pawtai) {
    _addPostController(content, user, pawtai).then((value) => null);
  }

  Future<void> _addPostController(
      String content, String user, String pawtai) async {
    if (content.isEmpty || user.isEmpty || pawtai.isEmpty) {
      return;
    }

    Map<String, String> request = {
      "content": content,
      "user_name": user,
      "pawtai_id": pawtai
    };
    final headers = {'Content-Type': 'application/json'};
    //final response =
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    //Map<String, dynamic> responsePayload = json.decode(response.body);
    // final user = User(username, email, password);
  }
}
