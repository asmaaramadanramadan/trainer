import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/custom_pin_code_text_field.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/verification_code_forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/verification_code_forgot_password_bloc.dart';

class VerificationCodeForgotPasswordScreen extends StatelessWidget {
  const VerificationCodeForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 14.v),
                child: Column(children: [
                  SizedBox(height: 31.v),
                  Text("msg_enter_verification".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 49.v,
                      width: 299.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 299.h,
                                child: Text("msg_we_ve_sent_an_otp".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyLargePoppinsOnPrimaryContainer_1))),
                        CustomImageView(
                            imagePath: ImageConstant.imgSolarPen2Outline,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 20.h, bottom: 4.v),
                            onTap: () {
                              onTapImgSolarPenOutline(context);
                            })
                      ])),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomPinCodeTextField(
                        context: context,
                        controller: TextEditingController(),
                        onChanged: (value) {
                          // otpController?.text = value;
                        }),
                  ),
                  SizedBox(height: 17.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_the_remaining_time2".tr,
                            style: CustomTextStyles.bodyMediumff030303),
                        TextSpan(
                            text: "lbl_2m_00s".tr,
                            style: CustomTextStyles.bodyMediumff056aff)
                      ]),
                      textAlign: TextAlign.left),
                  Spacer(),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_don_t_get_code".tr,
                            style: CustomTextStyles.bodyMediumff92929d),
                        TextSpan(
                            text: "lbl_resend".tr,
                            style: CustomTextStyles.titleSmallff92929d)
                      ]),
                      textAlign: TextAlign.left)
                ])),
            bottomNavigationBar: _buildVerify(context)));
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
  Widget _buildVerify(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_verify".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        buttonTextStyle: CustomTextStyles.titleMediumGray5001Bold,
        onPressed: () {
          onTapVerify(context);
        });
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapImgSolarPenOutline(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the createANewPasswordScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.createANewPasswordScreen,
    );
  }
}
