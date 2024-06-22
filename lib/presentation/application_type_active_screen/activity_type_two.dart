import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/home_navigate/home_navigate.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../information_screen/controller/information_controller.dart';

class ApplicationTypeActiveScreenTwo extends StatefulWidget {
  const ApplicationTypeActiveScreenTwo({Key? key}) : super(key: key);

  @override
  State<ApplicationTypeActiveScreenTwo> createState() =>
      _ApplicationTypeActiveScreenTwoState();
}

class _ApplicationTypeActiveScreenTwoState
    extends State<ApplicationTypeActiveScreenTwo> {
  InformationController informationController =
      Get.put(InformationController());

  String selectTitle = '';

  List title = [
    'Sedentary',
    'Light activity',
    'Moderate activity',
    'Vigorous activity',
    'Very vigorous activity',
  ];

  List image = [
    'assets/images/Lazy.png',
    'assets/images/Pullups.png',
    'assets/images/Sports.png',
    'assets/images/Rowing.png',
    'assets/images/Rowing.png'
  ];

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
                          LocalizationExtension("Choose your activity level")
                              .tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargePoppinsOnPrimaryContainer_1)),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          LocalizationExtension(
                                  "A coach will assign tasks to you based on your health data")
                              .tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 22.v),
                  Container(
                      width: 331.h,
                      margin: EdgeInsets.only(left: 10.h, right: 11.h),
                      child: Text(
                          LocalizationExtension(
                                  "Choose 1 of the following options ")
                              .tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargePoppinsOnPrimaryContainer_1)),
                  ...List.generate(
                      title.length,
                      (index) => Column(
                            children: [
                              SizedBox(height: 12.v),
                              _buildFrame(context,
                                  home: image[index], title: title[index]),
                            ],
                          ))
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
  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.grey
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          SizedBox(
              height: 32.adaptSize,
              width: 32.adaptSize,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA700,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgCloseGray30001,
                    height: 12.v,
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 5.v, bottom: 2.v),
              child: Text(LocalizationExtension("lbl_lose_weight").tr,
                  style: CustomTextStyles.titleMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.grey
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          SizedBox(
              height: 32.adaptSize,
              width: 32.adaptSize,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA700,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgTelevisionIndigo100,
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v, bottom: 4.v),
              child: Text(LocalizationExtension("msg_gain_muscle_mass").tr,
                  style: CustomTextStyles.titleMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: LocalizationExtension("lbl_next").tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () async {
          informationController.level = selectTitle;
          String originalDateString = informationController.selectedTime;

          List<String> dateComponents = originalDateString.split('-');

          DateTime originalDate = DateTime(
            int.parse(dateComponents[0]), // Year
            int.parse(dateComponents[1]), // Month
            int.parse(dateComponents[2]), // Day
          );

          String formattedDate = DateFormat('yyyy-MM-dd').format(originalDate);

          Get.dialog(Center(
            child: CircularProgressIndicator(),
          ));
          await informationController
              .postData(
            date: formattedDate,
            weight: informationController.weight,
            height: informationController.height,
            exercise: informationController.exercise,
            gender: informationController.gender,
          )
              .then((value) {
            Get.offAll(HomeNavigate());
          });
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
