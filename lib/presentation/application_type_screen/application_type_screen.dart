import 'package:fty/presentation/home_navigate/home_navigate.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../information_screen/controller/information_controller.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

class ApplicationTypeScreen extends StatefulWidget {
  const ApplicationTypeScreen({Key? key}) : super(key: key);

  @override
  State<ApplicationTypeScreen> createState() => _ApplicationTypeScreenState();
}

class _ApplicationTypeScreenState extends State<ApplicationTypeScreen> {
  int selectIndex = 0;
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
                  SizedBox(height: 13.v),
                  _buildSubContainer(context),
                  SizedBox(height: 10.v),
                  _buildSubContainer1(context),
                  SizedBox(height: 18.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          LocalizationExtension("msg_choose_1_of_the").tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 16.v),
                  _buildRegularExercise(context),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Divider(
                          color: appTheme.black90001.withOpacity(0.3),
                          indent: 29.h,
                          endIndent: 44.h)),
                  SizedBox(height: 11.v),
                  _buildFrame(context),
                  SizedBox(height: 12.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Divider(
                          color: appTheme.black90001.withOpacity(0.3),
                          indent: 29.h,
                          endIndent: 44.h)),
                  SizedBox(height: 11.v),
                  _buildFrame1(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: LocalizationExtension("msg_choose_your_exercises").tr));
  }

  /// Section Widget
  Widget _buildSubContainer(BuildContext context) {
    return AnotherStepper(
        iconHeight: 59,
        iconWidth: 69,
        stepperDirection: Axis.horizontal,
        activeIndex: 0,
        inverted: true,
        stepperList: [
          StepperData(
              iconWidget: Column(children: [
            Container(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: CustomImageView(
                    imagePath:
                        ImageConstant.imgIconamoonProfileBoldOnprimarycontainer,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.center)),
            // Padding(
            //     padding: EdgeInsets.only(top: 7.v),
            //     child: Text("lbl_information".tr,
            //         style: theme.textTheme.bodySmall))
          ])),
          StepperData(
              iconWidget: Column(children: [
            Container(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcBaselineHeight,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.center)),
            // Padding(
            //     padding: EdgeInsets.only(top: 9.v),
            //     child: Text("lbl_your_height".tr,
            //         style: theme.textTheme.bodySmall))
          ])),
          StepperData(
              iconWidget: Column(children: [
            Container(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGuidancePersonalTrainingPrimary,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.center),
            ),
            // Padding(
            //     padding: EdgeInsets.only(top: 9.v),
            //     child: Text("msg_application_type".tr,
            //         style: CustomTextStyles.bodySmallOnErrorContainer))
          ]))
        ]);
  }

  /// Section Widget
  Widget _buildSubContainer1(BuildContext context) {
    return AnotherStepper(
        stepperDirection: Axis.horizontal,
        activeIndex: 0,
        barThickness: 3,
        inverted: true,
        stepperList: [StepperData(), StepperData(), StepperData()]);
  }

  /// Section Widget
  Widget _buildRegularExercise(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selectIndex = 1;
        });
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
          decoration: selectIndex == 1
              ? AppDecoration.outlinePrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8)
              : AppDecoration.disabled
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(children: [
            SizedBox(
                height: 40.adaptSize,
                width: 40.adaptSize,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onError,
                              borderRadius: BorderRadius.circular(20.h)))),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHealthiconsExe,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor:
                                            appTheme.whiteA700.withOpacity(0.2),
                                        color: appTheme.whiteA700,
                                        strokeWidth: 1.h)))
                          ])))
                ])),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 5.v),
                child: Text(LocalizationExtension("msg_regular_exercise2").tr,
                    style: CustomTextStyles.titleMediumBlack90001_1)),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgFiRrArrowSmallRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 8.v, right: 7.h, bottom: 8.v))
          ])),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // onTapFrame(context);
          setState(() {
            selectIndex = 2;
          });
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
            decoration: selectIndex == 2
                ? AppDecoration.outlinePrimary1
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8)
                : AppDecoration.disabled
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(children: [
              SizedBox(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.onError,
                                borderRadius: BorderRadius.circular(20.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMdiAccountInjuryOutline,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      child: CircularProgressIndicator(
                                          value: 0.5,
                                          backgroundColor: appTheme.whiteA700
                                              .withOpacity(0.2),
                                          color: appTheme.whiteA700,
                                          strokeWidth: 1.h)))
                            ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 6.v),
                  child: Text(
                      LocalizationExtension("msg_post_injury_rehabilitation")
                          .tr,
                      style: CustomTextStyles.titleMediumBlack90001_1)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgFiRrArrowSmallRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, right: 7.h, bottom: 8.v))
            ])));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selectIndex = 3;
        });
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
          decoration: selectIndex == 3
              ? AppDecoration.outlinePrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8)
              : AppDecoration.disabled
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(children: [
            SizedBox(
                height: 40.adaptSize,
                width: 40.adaptSize,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onError,
                              borderRadius: BorderRadius.circular(20.h)))),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgHealthiconsExeGray5001,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor:
                                            appTheme.whiteA700.withOpacity(0.2),
                                        color: appTheme.whiteA700,
                                        strokeWidth: 1.h)))
                          ])))
                ])),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 7.v),
                child: Text(LocalizationExtension("lbl_mental_health").tr,
                    style: CustomTextStyles.titleMediumBlack90001_1)),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgFiRrArrowSmallRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(top: 8.v, right: 7.h, bottom: 8.v))
          ])),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: LocalizationExtension("lbl_next").tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () async {
          String originalDateString = informationController.selectedTime;

          List<String> dateComponents = originalDateString.split('-');

          // Create a DateTime object from the components
          DateTime originalDate = DateTime(
            int.parse(dateComponents[0]), // Year
            int.parse(dateComponents[1]), // Month
            int.parse(dateComponents[2]), // Day
          );

          // Format the DateTime object into the desired string format
          String formattedDate = DateFormat('yyyy-MM-dd').format(originalDate);

          Get.dialog(Center(
            child: CircularProgressIndicator(),
          ));
          await informationController
              .postData(
                  date: formattedDate,
                  weight: informationController.weight,
                  height: informationController.height,
                  exercise: selectIndex == 1
                      ? 'regular exercise'
                      : selectIndex == 2
                          ? 'post injury'
                          : 'mental health',
                  gender: informationController.gender)
              .then((value) {
            onTapNext(context);
          });
        });
  }

  /// Navigates to the musculesChoicesOneScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.musculesChoicesOneScreen,
    );
  }

  /// Navigates to the applicationTypeActiveScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Get.offAll(HomeNavigate());
  }
}
