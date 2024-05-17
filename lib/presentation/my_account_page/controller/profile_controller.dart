import 'dart:convert';

import 'package:fty/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../login_screen/login_screen.dart';
import '../my_account_page.dart';
import '../profile_screen.dart';

class ProfileController extends GetxController {
  bool isLoading = false;

  void updateIsLoading(bool value) {
    isLoading = value;
    update();
  }
  Future getDataProfile() async {
    var headers = {'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'};
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://trainer.codexa.codes/api/user/profile'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
  Future updateProfile(Map<String, String> data) async {
    updateIsLoading(true);
    var headers = {'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'};

    var request = http.MultipartRequest('POST', Uri.parse('https://trainer.codexa.codes/api/user/update-profile'));
    request.fields.addAll(data);

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
print(response.statusCode);
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      print('true');
      updateIsLoading(false);
      Get.off(ProfileSettings());
      return json.decode(data);
    }
    else {
      print(response.reasonPhrase);
    }
    print('true');
    updateIsLoading(false);

  }
  Future updatePassword(Map<String, String> data) async {
    updateIsLoading(true);
    var headers = {'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'};

    var request = http.MultipartRequest('POST', Uri.parse('https://trainer.codexa.codes/api/user/update-password'));
    request.fields.addAll(data);

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
print(response.statusCode);
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      print('true');
      updateIsLoading(false);
      Get.off(MyAccountPage());
      return json.decode(data);
    }
    else {
      print(response.reasonPhrase);
    }
    print('true');
    updateIsLoading(false);

  }

  Future logout() async {
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'
    };
    var request = http.Request('POST', Uri.parse('https://trainer.codexa.codes/api/user/logout'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    prefs.clear();
    Get.offAll(LoginScreen());
    if (response.statusCode == 200) {
      print('true');

      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }
  Future DeleteAccount() async {
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${prefs.getString('token') ?? ''}'
    };
    var request = http.Request('DELETE', Uri.parse('https://trainer.codexa.codes/api/user/delete-account'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    prefs.clear();
    Get.offAll(LoginScreen());
    if (response.statusCode == 200) {
      print('true');
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

  }


}
