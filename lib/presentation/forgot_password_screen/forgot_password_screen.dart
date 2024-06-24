import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

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
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.h, vertical: 50.v),
                            child: Column(children: [
                              Text("lbl_forgot_password".tr,
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 6.v),
                              Container(
                                  width: 338.h,
                                  margin: EdgeInsets.symmetric(horizontal: 7.h),
                                  child: Text("msg_please_enter_your2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargePoppinsOnPrimaryContainer_1)),
                              SizedBox(height: 28.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_email".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(height: 8.v),
                              CustomTextFormField(
                                  controller: TextEditingController(),
                                  hintText: "msg_enter_your_email".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  }),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildSend(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 389.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorOnerrorcontainer20x9,
            margin: EdgeInsets.fromLTRB(23.h, 12.v, 357.h, 12.v)));
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_send".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          onTapSend(context);
        });
  }

  /// Navigates to the verificationCodeForgotPasswordScreen when the action is triggered.
  onTapSend(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verificationCodeForgotPasswordScreen,
    );
  }
}
