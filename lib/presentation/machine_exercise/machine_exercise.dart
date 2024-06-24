import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class CameraPermissionScreen extends StatefulWidget {
  const CameraPermissionScreen({required this.cameras, Key? key})
      : super(key: key);
  final List<CameraDescription> cameras;
  @override
  _CameraPermissionScreenState createState() => _CameraPermissionScreenState();
}

class _CameraPermissionScreenState extends State<CameraPermissionScreen> {
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;
  int _selectedCameraIndex = 0;
  late Timer _timer;
  bool _isCapturing = false;
  int _jumpingCount = 0;
  int _noJumpingCount = 0;
  int _noJumpingCount2 = 0;
  int _countdown = 20;
  int _sequenceNumber = 0;

  String _leftCounter = '2';
  String _rightCounter = '2';
  String _dumbbell = 'True';
  String _message = 'Start';
  String _leftStage = '2';
  String _rightStage = '2';
  @override
  void initState() {
    super.initState();
    _cameraController =
        CameraController(widget.cameras.first, ResolutionPreset.max);
    _initializeCamera();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    _timer.cancel(); // Cancel the timer when disposing the screen
    super.dispose();
  }

  Future<void> _initializeCamera() async {
    try {
      final frontCamera = widget.cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => widget.cameras.first,
      );

      _cameraController = CameraController(
        frontCamera,
        ResolutionPreset.max,
      );

      await _cameraController.initialize();
      setState(() {}); // Trigger a rebuild after initialization
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  Future<void> _captureFrame() async {
    if (!_cameraController.value.isInitialized) {
      return;
    }

    try {
      final XFile image = await _cameraController.takePicture();
      print('Captured image path: ${image.path}');
      await _prepareAndSendFrame(image);
    } catch (e) {
      print('Error capturing image: $e');
    }
  }

  Future<void> _prepareAndSendFrame(XFile image) async {
    // Prepare additional data and call the existing send frame function
    final additionalData = {
      'name': 'bicep_curls',
      'height': '180',
      'frame_number': _sequenceNumber.toString(),
      'left_counter': _leftCounter.toString(),
      'right_counter': _rightCounter.toString(),
      'dumbbell': _dumbbell.toString(),
      'message': _message.toString(),
      'left_stage': _leftStage.toString(),
      'right_stage': _rightStage.toString(),
    };

    _sequenceNumber++; // Increment the sequence number for the next frame

    // Send the frame along with the additional data
    await _sendFrameToApi(image, additionalData);
  }

  Future<void> _sendFrameToApi(XFile image, Map<String, String> additionalData) async {
    try {
      final startTime = DateTime.now();
      File imageFile = File(image.path);
      Uint8List imageBytes = await imageFile.readAsBytes();

      final uri = Uri.parse('http://192.168.11.10:5000/workout');
      final request = http.MultipartRequest('POST', uri);

      print('Image bytes length: ${imageBytes.length}');
      if (imageBytes.isEmpty) {
        print('Error: Image bytes are empty');
        return;
      }

      final multipartFile = http.MultipartFile.fromBytes(
        'image', // Ensure this matches the server's expected field name
        imageBytes,
        filename: image.name,
        contentType: MediaType('image', 'jpeg'),
      );

      request.files.add(multipartFile);

      // Add the additional data to the request
      additionalData.forEach((key, value) {
        request.fields[key] = value;
      });

      final response = await request.send();
      final responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        print('Frame uploaded successfully');
        final decodedResponse = json.decode(responseBody);
        //  final action = decodedResponse['action'];
        setState(() {
          _leftCounter = (decodedResponse['left_counter']?? '..').toString();
          _rightCounter = (decodedResponse['right_counter']??'..').toString();
          _dumbbell = (decodedResponse['dumbbell'] ?? '..').toString();
          _message = (decodedResponse['message'] ?? '..').toString();
          _leftStage = (decodedResponse['left_stage'] ?? '..').toString();
          _rightStage = (decodedResponse['right_stage']?? '..').toString();
        });
        print(decodedResponse['dumbbell']);
        print("bola's Dumbell : ${_dumbbell.toString()}");
        setState(() {
        });
        print('Response: $responseBody');
        final endTime = DateTime.now();
        final duration = endTime.difference(startTime);
        print(
            'Time taken to send API request: ${duration.inMilliseconds} milliseconds');

      } else {
        print('Failed to upload frame: ${response.statusCode}');
        print('Response body: $responseBody');
      }
    } catch (e) {
      print('Error sending frame to API: $e');
    }
  }

  Future<void> _startCaptureTimer() async {
    _timer = Timer.periodic(Duration(milliseconds: 150), (timer) async {
      await _captureFrame();
    });
  }

  Future<void> _toggleCapture() async {
    setState(() {
      _isCapturing = !_isCapturing; // Toggle capturing state
    });

    if (_isCapturing) {
      // If capturing has started, start the timer
      _startCountdown();
      await _startCaptureTimer();
    } else {
      // If capturing has stopped, cancel the timer
      _timer.cancel();
    }
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() {
          _countdown--;
        });
      } else {
        _timer.cancel();
        // Stop capturing after countdown
        _toggleCapture();
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (_cameraController.value.isInitialized)
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: CameraPreview(_cameraController),
            )
          else
            Center(child: CircularProgressIndicator()),
          SafeArea(
            minimum: EdgeInsets.only(top: 100),
            child: Container(
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                onPressed: () async {
                  await _toggleCapture();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  shape: MaterialStateProperty.all(
                    CircleBorder(),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size.fromRadius(70),
                  ),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 50),
                  ),
                ),
                child: Text(_isCapturing
                    ? '$_countdown'
                    : 'Start'), // Change button text based on capturing state
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20),
              Text(
                "${_jumpingCount}",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                "Jumping Jacks",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Uncomment these if needed
                  // CircleAvatar(
                  //   backgroundColor: Colors.transparent,
                  //   radius: 50,
                  //   child: Text(
                  //     "Times : ${_noJumpingCount}",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20),
                  //   ),
                  // ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.transparent,
                  //   radius: 50,
                  //   child: Text(
                  //     "No : ${_noJumpingCount2}",
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 20),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}