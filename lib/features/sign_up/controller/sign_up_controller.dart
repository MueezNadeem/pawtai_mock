import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpController {
  final url = 'http://192.168.100.155:5000/AddUser';

  void callAddUser(String username, String email, String password) {
    _addUserController(username, email, password).then((value) => null);
  }

  Future<void> _addUserController(
      String username, String email, String password) async {
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      return;
    }

    Map<String, String> request = {
      "name": username,
      "email": email,
      "password": password
    };
    final headers = {'Content-Type': 'application/json'};
    //final response =
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
    //Map<String, dynamic> responsePayload = json.decode(response.body);
    // final user = User(username, email, password);
  }
}
