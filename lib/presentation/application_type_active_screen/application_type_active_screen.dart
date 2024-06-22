import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';

import '../information_screen/controller/information_controller.dart';
import 'activity_type_two.dart';

class ApplicationTypeActiveScreen extends StatefulWidget {
  const ApplicationTypeActiveScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationTypeActiveScreen> createState() =>
      _ApplicationTypeActiveScreenState();
}

class _ApplicationTypeActiveScreenState
    extends State<ApplicationTypeActiveScreen> {
  String selectTitle = '';
  InformationController informationController =
      Get.put(InformationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(children: [
                  Container(
                      width: 331.h,
                      margin: EdgeInsets.only(left: 10.h, right: 11.h),
                      child: Text(
                          LocalizationExtension("msg_a_coach_will_assign").tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargePoppinsOnPrimaryContainer_1)),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          LocalizationExtension("msg_choose_1_of_the").tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 22.v),
                  _buildFrame(context,
                      home: 'assets/images/icon1.png',
                      title: LocalizationExtension("lbl_lose_weight").tr),
                  SizedBox(height: 16.v),
                  _buildFrame(context,
                      home: 'assets/images/icon1.png',
                      title: LocalizationExtension("lbl_keep_fit").tr),
                  SizedBox(height: 16.v),
                  _buildFrame(context,
                      home: 'assets/images/icon2.png',
                      title: LocalizationExtension("lbl_get_stronger").tr),
                  SizedBox(height: 16.v),
                  _buildFrame(context,
                      home: 'assets/images/icon1.png',
                      title: LocalizationExtension("msg_gain_muscle_mass").tr),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: LocalizationExtension("msg_choose_exercises").tr));
  }



  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: LocalizationExtension("lbl_next").tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          informationController.goal = selectTitle == 'Lose weight'
              ? '1'
              : selectTitle == 'Keep fit'
                  ? '2'
                  : selectTitle == 'Get stronger'
                      ? '3'
                      : '4';
          Get.to(ApplicationTypeActiveScreenTwo());
        });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String home,
    required String title,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          selectTitle = title;
        });
        print(title);
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v),
          decoration: selectTitle == title
              ? AppDecoration.fillBlueA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8)
              : AppDecoration.grey
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
                height: 34.v,
                width: 32.h,
                margin: EdgeInsets.only(top: 2.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgCloseWhiteA700,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.topCenter),
                  CustomImageView(
                      imagePath: home,
                      width: 28.h,
                      alignment: Alignment.bottomCenter)
                ])),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 8.v, bottom: 4.v),
                child: Text(title,
                    style: CustomTextStyles.titleMediumBlack900
                        .copyWith(color: appTheme.black900)))
          ])),
    );
  }
}
