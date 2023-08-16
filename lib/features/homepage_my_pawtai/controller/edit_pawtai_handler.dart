import 'dart:convert';

import 'package:http/http.dart' as http;

class EditPawtai {
  final url = 'http://192.168.100.155:5000/UpdatePawtai';
  Future<void> updatePawtai(String pawtaiID, String name, String type,
      String length, String weight, String breed) async {
    Map<String, String> request = {
      "pawtai_id": pawtaiID,
      "name": name,
      "petType": type,
      "petLength": length,
      "petWeight": weight,
      "petBreed": breed
    };

    final headers = {'Content-Type': 'application/json'};
    await http.post(Uri.parse(url),
        headers: headers, body: json.encode(request));
  }
}
