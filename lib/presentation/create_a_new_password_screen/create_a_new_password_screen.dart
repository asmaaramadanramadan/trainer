import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/create_a_new_password_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/create_a_new_password_bloc.dart';

// ignore_for_file: must_be_immutable
class CreateANewPasswordScreen extends StatelessWidget {
  CreateANewPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 8.h, top: 94.v, right: 8.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                          "msg_create_a_new_password".tr,
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  SizedBox(height: 7.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 340.h,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          child: Text(
                                              "msg_set_a_strong_password".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyLargePoppinsOnPrimaryContainer_1))),
                                  SizedBox(height: 30.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text("lbl_new_password".tr,
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 7.v),
                                  _buildNewpassword(context),
                                  SizedBox(height: 15.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Text("msg_confirm_new_password".tr,
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 8.v),
                                  //   _buildNewpassword1(context),
                                  SizedBox(height: 12.v),
                                  _buildSpecialCharacter(context),
                                  SizedBox(height: 12.v),
                                  _buildCharacter(context),
                                  SizedBox(height: 12.v),
                                  _buildNumber(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildSubmit(context)));
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: CustomTextFormField(
            controller: TextEditingController(),
            hintText: "msg_enter_your_new_password".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            suffix: InkWell(
                onTap: () {
                  context
                      .read<CreateANewPasswordBloc>()
                      .add(ChangePasswordVisibilityEvent(value: false));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIconOnprimarycontainer,
                        height: 20.adaptSize,
                        width: 20.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 45.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: false,
            contentPadding:
                EdgeInsets.only(left: 12.h, top: 12.v, bottom: 12.v)));
  }

  /// Section Widget
  // Widget _buildNewpassword1(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 20.h),
  //       child: BCustomTextFormField(
  //           controller: TextEditingController(),
  //           hintText: "msg_confirm_new_password".tr,
  //           hintStyle: theme.textTheme.bodyMedium!,
  //           textInputAction: TextInputAction.done,
  //           textInputType: TextInputType.visiblePassword,
  //           alignment: Alignment.centerRight,
  //           suffix: InkWell(
  //               onTap: () {
  //                 context
  //                     .read<CreateANewPasswordBloc>()
  //                     .add(ChangePasswordVisibilityEvent1(value: false));
  //               },
  //               child: Container(
  //                   margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
  //                   child: CustomImageView(
  //                       imagePath: ImageConstant.imgIconOnprimarycontainer,
  //                       height: 20.adaptSize,
  //                       width: 20.adaptSize))),
  //           suffixConstraints: BoxConstraints(maxHeight: 45.v),
  //           validator: (value) {
  //             if (value == null ||
  //                 (!isValidPassword(value, isRequired: true))) {
  //               return "err_msg_please_enter_valid_password".tr;
  //             }
  //             return null;
  //           },
  //           obscureText: false,
  //           contentPadding:
  //               EdgeInsets.only(left: 12.h, top: 12.v, bottom: 12.v)));
  // }

  /// Section Widget
  Widget _buildSpecialCharacter(BuildContext context) {
    return CustomElevatedButton(
        height: 25.v,
        width: 154.h,
        text: "msg_1_special_character".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolsdone,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.fillGrayTL10,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildCharacter(BuildContext context) {
    return CustomElevatedButton(
        height: 25.v,
        width: 107.h,
        text: "lbl_1_character".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolsdone,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.fillGrayTL10,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildNumber(BuildContext context) {
    return CustomElevatedButton(
        height: 25.v,
        width: 97.h,
        text: "lbl_1_number".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolsdone,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.fillGrayTL10,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        buttonTextStyle: CustomTextStyles.titleMediumGray5001Bold,
        onPressed: () {
          onTapSubmit(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
