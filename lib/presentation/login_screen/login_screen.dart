import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/main.dart';
import 'package:fty/presentation/login_screen/controller/login_controlller.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

import '../home_navigate/home_navigate.dart';
import '../sign_up_screen/sign_up_screen.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginController loginController = Get.put(LoginController());

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
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            child: Column(children: [
                              Container(
                                  width: 306.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: Text(
                                      LocalizationExtension(
                                              "msg_please_enter_your")
                                          .tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargePoppinsOnPrimaryContainer_1)),
                              SizedBox(height: 29.v),
                              _buildContainer(context),
                              SizedBox(height: 58.v),
                      ]))))),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title:
            AppbarSubtitle(text: LocalizationExtension("lbl_welcome_back").tr));
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
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
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(LocalizationExtension("lbl_email").tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 8.v),
                    CustomTextFormField(
                        controller: email,
                        hintText:
                            LocalizationExtension("msg_enter_your_email").tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return LocalizationExtension(
                                    "err_msg_please_enter_valid_email")
                                .tr;
                          }
                          return null;
                        }),
                    SizedBox(height: 16.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(LocalizationExtension("lbl_password").tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 7.v),
                    CustomTextFormField(
                        controller: password,
                        hintText:
                            LocalizationExtension("msg_enter_your_password").tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                            onTap: () {},
                            child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconOnprimarycontainer,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize))),
                        suffixConstraints: BoxConstraints(maxHeight: 45.v),
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return LocalizationExtension(
                                    "err_msg_please_enter_valid_password")
                                .tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        contentPadding: EdgeInsets.only(
                            left: 12.h, top: 12.v, bottom: 12.v)),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '*  at least 8 characters long',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '*  contain an uppercase letter',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '*  a lowercase letter',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '*   and a number.',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Text(
                                  LocalizationExtension("msg_forgot_password")
                                      .tr,
                                  style: CustomTextStyles.bodyMediumPrimary
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)))
                        ]),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                      text: LocalizationExtension("lbl_login").tr,
                      isDisabled: false,
                      onPressed: () {
                        Get.dialog(Center(
                          child: CircularProgressIndicator(),
                        ));
                        loginController
                            .login(email.text, password.text)
                            .then((value) {
                          print(value);
                          print(value);
                          if (value['message'] == '') {
                            prefs.setString('token', value['data']['token']);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeNavigate()));
                          } else {
                            Get.snackbar('APP', 'Wrong Data',
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        });
                      },
                    ),
                    SizedBox(height: 15.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                          LocalizationExtension("msg_don_t_have_an_account").tr,
                          style: theme.textTheme.bodyMedium),
                      InkWell(
                        onTap: () {
                          Get.to(SignUpScreen());
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(LocalizationExtension("lbl_sign_up").tr,
                                style: CustomTextStyles.titleSmallPrimary
                                    .copyWith(
                                        decoration: TextDecoration.underline))),
                      ),
                      CustomImageView(
                          imagePath: ImageConstant.imgIconPrimary20x20,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h))
                    ])
                  ])))
    ]);
  }



  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
