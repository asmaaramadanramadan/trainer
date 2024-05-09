import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'models/camera_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/camera_bloc.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup233),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 124.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 639.v),
                              child: Text("lbl_sets".tr,
                                  style: CustomTextStyles
                                      .titleLargeInterGray5001)),
                          Padding(
                              padding:
                                  EdgeInsets.only(right: 1.h, bottom: 638.v),
                              child: Text("lbl_reps".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterGray5001))
                        ]))),
            bottomNavigationBar: _buildTrainActions(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFiRrAngleLeftGray5001,
            margin: EdgeInsets.only(left: 32.h, top: 10.v, bottom: 25.v),
            onTap: () {
              onTapFiRrAngleLeft(context);
            }),
        title: AppbarSubtitleSeven(
            text: "lbl_1_2".tr, margin: EdgeInsets.only(left: 74.h)),
        actions: [
          AppbarSubtitleSix(
              text: "lbl_6_12".tr,
              margin: EdgeInsets.fromLTRB(47.h, 19.v, 123.h, 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildTrainActions(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 54.h, right: 54.h, bottom: 38.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPause,
                    height: 32.adaptSize,
                    width: 32.adaptSize),
                Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Text("lbl_pause".tr,
                        style: CustomTextStyles.titleMediumInterGray5001))
              ])),
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 3.h, top: 3.v, right: 3.h, bottom: 3.v),
              strokeWidth: 3.h,
              gradient: LinearGradient(
                  begin: Alignment(0.77, -0.21),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.lightBlue100,
                    appTheme.lightBlue100,
                    appTheme.blue400
                  ]),
              corners: Corners(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
                  decoration: AppDecoration.outline
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder32),
                  child: Text("lbl_6".tr,
                      style: CustomTextStyles.headlineSmallInterWhiteA700))),
          GestureDetector(
              onTap: () {
                onTapFinish(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 32.adaptSize,
                        width: 32.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(top: 8.v),
                        child: Text("lbl_finish".tr,
                            style: CustomTextStyles.titleMediumInterGray5001))
                  ])))
        ]));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapFiRrAngleLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the whenEndDayClickedScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.whenEndDayClickedScreen,
    );
  }
}
