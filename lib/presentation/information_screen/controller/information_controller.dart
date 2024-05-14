import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fty/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class InformationController extends GetxController {
  String selectedTime = '';
  String weight = '';
  String height = '';
  String gender = '';
  String exercise = '';

  Future postData({
    required String date,
    required String weight,
    required String height,
    required String exercise,
    required String gender,
  }) async {

    print('///////////////////////////////////////////////////////qqq');
    print({
      'birth_date': date,
      'weight': weight,
      'height': height,
      'exercise': exercise,
      'gender': gender,
      'muscle_id': '1',
      'injury_date': '2023-11-23',
      'injury_description': 'asdasdasdasdasdsad',
      'treatment_time': 'sdasdasdasdsadsdadsads'
    });
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'
    };
    var request = http.MultipartRequest('POST',
        Uri.parse('https://trainer.codexa.codes/api/user/complete-register'));
    request.fields.addAll({
      'birth_date': date,
      'weight': weight,
      'height': height,
      'exercise': exercise,
      'gender': gender,
      'muscle_id': '1',
      'injury_date': '2023-11-23',
      'injury_description': 'asdasdasdasdasdsad',
      'treatment_time': 'sdasdasdasdsadsdadsads'
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      print(data);
      print(data);
      print(data);
      print(data);
      print(data);
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}
