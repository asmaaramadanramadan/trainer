import 'dart:convert';

import 'package:fty/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailsController extends GetxController {
  Future start(String id) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${prefs.getString('token')}'
    };
    var request = http.MultipartRequest('POST',
        Uri.parse('https://trainer.codexa.codes/api/user/join-exercises'));
    request.fields.addAll({'exercise_id': id});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      var data = await response.stream.bytesToString();
      // if (json.decode(data)['message'] == 'Joined Successfully') {
      //   Get.snackbar('App', json.decode(data)['message']);
      // }
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
  Future join(String id) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization':'Bearer ${prefs.getString('token')}'
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://trainer.codexa.codes/api/user/join-plan'));
    request.fields.addAll({
      'plan_id': id
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      var data = await response.stream.bytesToString();
      // if (json.decode(data)['message'] == 'Joined Successfully') {
      //   Get.snackbar('App', json.decode(data)['message']);
      // }
      return json.decode(data);
    }
    else {
      print(response.reasonPhrase);
    }

  }
}
