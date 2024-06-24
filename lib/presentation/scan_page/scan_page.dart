import 'dart:convert';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fty/presentation/scan_page/scan_details.dart';
import 'package:fty/presentation/scan_page/scan_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:timer_count_down/timer_controller.dart';

import '../../main.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  late CameraController controller;
  final CountdownController _controller = new CountdownController();

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              children: [
                CameraPreview(controller),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () async {
                          _controller.start();
                          XFile imagePicked = await controller.takePicture();
                          await postImage(imageFile: File(imagePicked.path))
                              .then((value) {
                            print(value);
                            Get.to(NutritionDetailScreen(
                              nutritionData: NutritionData.fromJson({
                                "calories_per_100g": value['data'][0]
                                    ['calories_per_100g'],
                                "carbohydrates_per_100g": value['data'][0]
                                    ['carbohydrates_per_100g'],
                                "fats_per_100g": value['data'][0]
                                    ['fats_per_100g'],
                                "fiber_per_100g": value['data'][0]
                                    ['fiber_per_100g'],
                                "name": value['data'][0]['name'],
                                "protein_per_100g": value['data'][0]
                                    ['protein_per_100g'],
                              }),
                              imageFile: File(imagePicked.path),
                            ));
                          });
                        },
                        icon: Icon(
                          Icons.camera,
                          color: Colors.white,
                          size: 60,
                        )),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.white.withOpacity(.4),
                    //       borderRadius: BorderRadius.circular(100),
                    //       border: Border.all(
                    //           color: Colors.blue.shade600, width: 6)),
                    //   child: Countdown(
                    //     controller: _controller,
                    //     seconds: 10,
                    //     build: (_, double time) => Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: Text(
                    //         time.toString(),
                    //         style: TextStyle(fontSize: 50, color: Colors.white),
                    //       ),
                    //     ),
                    //     interval: Duration(milliseconds: 100),
                    //     onFinished: () {
                    //       ScaffoldMessenger.of(context).showSnackBar(
                    //         SnackBar(
                    //           content: Text('Timer is done!'),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    // IconButton(
                    //     onPressed: () async {
                    //       _controller.restart();
                    //
                    //       XFile video = await controller.stopVideoRecording();
                    //       print('jiugjghfytghfvyghvyuj');
                    //       print(video.path);
                    //       print(video.path);
                    //       print(video.path);
                    //       print(video.path);
                    //     },
                    //     icon: Icon(
                    //       Icons.pause,
                    //       color: Colors.white,
                    //       size: 60,
                    //     )),
                  ],
                ),
              ],
            )));
  }

//   Future<void> postImage(File imageFile) async {
//     final String apiUrl = 'http://52.44.17.252:8000/detect';
//     print('ssssssssssssssssssssssssssssss');
//     lookupMimeType(imageFile.path);
//
//     var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
//
//     request.files.add(
//       await http.MultipartFile.fromPath(
//         'image',
//         imageFile.path,
//          contentType: mimeType != null ? MediaType.parse(mimeType) : null,
//       ),
//     );
// print('ddddddddddddddddddddddddddd');
//     try {
//       var response = await request.send();
//       print('qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq');
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         print('Image uploaded successfully');
//
//         var data = await response.stream.bytesToString();
//         print(data);
//       } else {
//         print('Failed to upload image: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error uploading image: $e');
//     }
//   }

  Future postImage({required File imageFile}) async {
    print('wwwwwwwwwwwwwwwwwwwwwwwwww');
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://52.44.17.252:8000/detect'));

    request.files
        .add(await http.MultipartFile.fromPath('image', imageFile.path));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      print(data);
      print('fwefefwefwff3fwfw3f');
      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}
