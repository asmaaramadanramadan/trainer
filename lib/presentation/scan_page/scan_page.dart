import 'package:camera/camera.dart';
import 'package:fty/widgets/custom_icon_button.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import '../../main.dart';
import 'models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/scan_bloc.dart';
import 'package:fty/presentation/scan_one_bottomsheet/scan_one_bottomsheet.dart';

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
                          await controller.startVideoRecording();
                        },
                        icon: Icon(
                          Icons.play_circle_fill_outlined,
                          color: Colors.white,
                          size: 60,
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: Colors.blue.shade600, width: 6)),
                      child: Countdown(
                        controller: _controller,
                        seconds: 10,
                        build: (_, double time) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            time.toString(),
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        interval: Duration(milliseconds: 100),
                        onFinished: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Timer is done!'),
                            ),
                          );
                        },
                      ),
                    ),
                    IconButton(
                        onPressed: () async {
                          _controller.restart();

                          XFile video = await controller.stopVideoRecording();
                          print('jiugjghfytghfvyghvyuj');
                          print(video.path);
                          print(video.path);
                          print(video.path);
                          print(video.path);
                        },
                        icon: Icon(
                          Icons.pause,
                          color: Colors.white,
                          size: 60,
                        )),
                  ],
                ),
              ],
            )));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_pancake".tr,
                            style: CustomTextStyles
                                .titleMediumBlack90001SemiBold_1),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("msg_native_to_see_details".tr,
                                style: CustomTextStyles.bodyMediumBlack90001))
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, right: 12.h, bottom: 10.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL19,
                      onTap: () {
                        // onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)))
            ]));
  }
}
