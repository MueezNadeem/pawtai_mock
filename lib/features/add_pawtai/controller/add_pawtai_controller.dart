import 'dart:convert';

import 'package:http/http.dart' as http;

class AddPawtaiController {
  final url = 'http://192.168.100.100:5000/AddPawtai';

  void callAddPawtai(String name, String user) {
    _addPawtaiController(name, user).then((value) => null);
  }

  Future<void> _addPawtaiController(String name, String user) async {
    if (name.isEmpty || user.isEmpty) {
      return;
    }

    Map<String, String> request = {"pawtai_name": name, "user_name": user};
    final headers = {'Content-Type': 'application/json'};
    //final response =
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    //Map<String, dynamic> responsePayload = json.decode(response.body);
    // final user = User(username, email, password);
  }
}
