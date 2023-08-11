import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pawtai_mockup/common/models/pawtai.dart';

class UserPawtaiRetriever {
  final url = 'http://192.168.100.100:5000/GetUserPawtai';

  List<Pawtai> callGetPawtai(String userEmail) {
    List<Pawtai> temp = List.empty();
    getPawtai(userEmail).then((value) {
      temp = value;
    });
    return temp;
  }

  Future<List<Pawtai>> getPawtai(String userEmail) async {
    List<Pawtai> temp = List.empty();

    Map<String, String> request = {"user_email": userEmail};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));

    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Pawtai> pawtaiList =
        parsed.map<Pawtai>((json) => Pawtai.fromJson(json)).toList();

    temp = pawtaiList;
    return temp;
  }
}
