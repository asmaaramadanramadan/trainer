import 'dart:convert';

import 'package:fty/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future getBestForYou() async {
    var headers = {'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'};
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://trainer.codexa.codes/api/user/best-for-you-exercises'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }

  Future getPopular() async {
    var headers = {'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'};

    var request = http.Request('GET',
        Uri.parse('https://trainer.codexa.codes/api/user/popular-exercises'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }

  Future myPlan() async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${prefs.getString('token')}'
    };
    var request = http.Request(
        'GET', Uri.parse('https://trainer.codexa.codes/api/user/my-plans'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
