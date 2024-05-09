import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import '../login_screen/login_screen.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/sign_up_bloc.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SizedBox(
                        height: SizeUtils.height,
                        child: Form(
                            key: _formKey,
                            child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(vertical: 5.v),
                                child: Column(children: [
                                  Container(
                                      width: 338.h,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 25.h),
                                      child: Text("msg_please_enter_your2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyLargePoppinsOnPrimaryContainer_1)),
                                  SizedBox(height: 29.v),
                                  _buildContainer(context),
                                  Spacer(),
                                  CustomElevatedButton(
                                      text: "lbl_send".tr,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 18.h)),
                                  SizedBox(height: 16.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text(
                                                "msg_already_have_an".tr,
                                                style: theme
                                                    .textTheme.bodyMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.h, top: 1.v),
                                            child: InkWell(
                                              child: Text("lbl_sign_in".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallPrimary
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            LoginScreen()));
                                              },
                                            )),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconPrimary20x20,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 4.h, bottom: 2.v))
                                      ]),
                                  SizedBox(height: 66.v),
                                  _buildSubContainer(context),
                                  SizedBox(height: 15.v)
                                ])))))),
            bottomNavigationBar: _buildButtonsContainer(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "lbl_welcome_to".tr,
                  style: CustomTextStyles.headlineLargeff030303),
              TextSpan(
                  text: "lbl2".tr,
                  style: CustomTextStyles.headlineLargeff056aff)
            ]),
            textAlign: TextAlign.left));
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return SizedBox(
        height: 171.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconPrimary40x40,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      alignment: Alignment.center))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  decoration: AppDecoration.outlinePrimary3,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 49.v),
                        Text("lbl_email".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 8.v),
                        CustomTextFormField(
                            controller: TextEditingController(),
                            hintText: "msg_enter_your_email".tr,
                            hintStyle: theme.textTheme.bodyMedium!,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            controller: TextEditingController(),
                            hintText: "msg_enter_your_email".tr,
                            hintStyle: theme.textTheme.bodyMedium!,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            }),
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSubContainer(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 8.v),
                  child: SizedBox(width: 98.h, child: Divider())),
              Text("msg_or_continue_with".tr,
                  style: theme.textTheme.bodyMedium),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 8.v),
                  child: SizedBox(width: 98.h, child: Divider()))
            ]));
  }

  /// Section Widget
  Widget _buildButtonsContainer(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 58.h, right: 18.h, bottom: 58.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v),
              decoration: AppDecoration.greyWhite
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconRed500,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)),
          Spacer(),
          Container(
              height: 48.v,
              width: 104.h,
              padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 11.v),
              decoration: AppDecoration.greyWhite
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconBlueA40001,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)),
          Container(
              height: 48.v,
              width: 104.h,
              margin: EdgeInsets.only(left: 19.h),
              padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 11.v),
              decoration: AppDecoration.greyWhite
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconOnerrorcontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center))
        ]));
  }
}