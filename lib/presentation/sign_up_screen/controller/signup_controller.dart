import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class SignUpController extends GetxController {
  File? imageFile;

  Future<void> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
        source: source); // You can also use ImageSource.camera

    if (pickedFile != null) {
      File pickedImage = File(pickedFile.path);
      imageFile = pickedImage;
    }
    update();
  }

  Future signUp({
    required String name,
    required String email,
    required String phone,
    required String password,
    required File image,
  }) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://trainer.codexa.codes/api/user/register'));
    request.fields.addAll({
      'register_type': 'email',
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'password_confirmation': password
    });
    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();

      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}
