import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/custom_outlined_button.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/muscules_choices_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/muscules_choices_bloc.dart';

class MusculesChoicesScreen extends StatelessWidget {
  const MusculesChoicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerRight,
                      onTap: () {
                        onTapBtnClose(context);
                      },
                      child: CustomImageView()),
                  SizedBox(height: 8.v),
                  _buildChest(context),
                  SizedBox(height: 12.v),
                  _buildGlutes(context),
                  SizedBox(height: 12.v),
                  _buildTriceps(context),
                  SizedBox(height: 12.v),
                  _buildShoulders(context),
                  SizedBox(height: 12.v),
                  _buildUQuads(context),
                  SizedBox(height: 12.v),
                  _buildObliques(context),
                  SizedBox(height: 12.v),
                  _buildForearm(context),
                  SizedBox(height: 12.v),
                  _buildTraps(context),
                  SizedBox(height: 12.v),
                  _buildAbductors(context),
                  SizedBox(height: 12.v),
                  _buildAbs(context),
                  SizedBox(height: 12.v),
                  _buildBiceps(context),
                  SizedBox(height: 24.v),
                  _buildSave(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildChest(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_chest".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildGlutes(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_glutes".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildTriceps(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_triceps".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildShoulders(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_shoulders".tr,
        margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildUQuads(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_u_quads".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildObliques(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_obliques".tr,
        margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildForearm(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_forearm".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildTraps(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_traps".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildAbductors(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_abductors".tr,
        margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildAbs(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_abs".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildBiceps(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_biceps".tr, margin: EdgeInsets.symmetric(horizontal: 29.h));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        height: 35.v,
        width: 230.h,
        text: "lbl_save".tr,
        buttonStyle: CustomButtonStyles.fillBlueA,
        buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
        onPressed: () {
          onTapSave(context);
        });
  }

  /// Navigates to the musculesChoicesOneScreen when the action is triggered.
  onTapBtnClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.musculesChoicesOneScreen,
    );
  }

  /// Navigates to the musculesChoicesOneScreen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.musculesChoicesOneScreen,
    );
  }
}
