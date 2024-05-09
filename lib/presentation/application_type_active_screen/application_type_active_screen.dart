import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/application_type_active_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/application_type_active_bloc.dart';
import 'package:fty/presentation/done_dialog/done_dialog.dart';

class ApplicationTypeActiveScreen extends StatelessWidget {
  const ApplicationTypeActiveScreen({Key? key}) : super(key: key);

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
                      child: Text("msg_a_coach_will_assign".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargePoppinsOnPrimaryContainer_1)),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_choose_1_of_the".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 22.v),
                  _buildFrame1(context),
                  SizedBox(height: 16.v),
                  _buildFrame(context,
                      home: ImageConstant.imgHome, title: "lbl_keep_fit".tr),
                  SizedBox(height: 16.v),
                  _buildFrame(context,
                      home: ImageConstant.imgHome,
                      title: "lbl_get_stronger".tr),
                  SizedBox(height: 16.v),
                  _buildFrame4(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "msg_choose_exercises".tr));
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
              child: Text("lbl_lose_weight".tr,
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
              child: Text("msg_gain_muscle_mass".tr,
                  style: CustomTextStyles.titleMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          // onTapNext(context);
        });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String home,
    required String title,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v),
        decoration: AppDecoration.grey
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
        ]));
  }

  /// Displays a dialog with the [DoneDialog] content.
  // onTapNext(BuildContext context) {
  //   showDialog(
  //       context: NavigatorService.navigatorKey.currentContext!,
  //       builder: (_) => AlertDialog(
  //             content: DoneDialog.builder(
  //                 NavigatorService.navigatorKey.currentContext!),
  //             backgroundColor: Colors.transparent,
  //             contentPadding: EdgeInsets.zero,
  //             insetPadding: const EdgeInsets.only(left: 0),
  //           ));
  // }
}
