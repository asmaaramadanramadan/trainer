import 'package:flutter/cupertino.dart';
import 'package:fty/presentation/information_screen/information_screen.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../main.dart';
import '../home_navigate/home_navigate.dart';
import '../home_post_injury_rehabilitation_screen/home_post_injury_rehabilitation_screen.dart';
import '../login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

import 'controller/signup_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: Form(
          key: _formKey,
          child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 5.v),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      width: 338.h,
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Text(
                          LocalizationExtension("msg_please_enter_your2").tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargePoppinsOnPrimaryContainer_1)),
                  SizedBox(height: 12.v),
                  _buildContainer(context),
                  CustomElevatedButton(
                      onPressed: () async {
                        Get.dialog(Center(
                          child: CircularProgressIndicator(),
                        ));
                        await signUpController
                            .signUp(
                                name: name.text,
                                email: email.text,
                                phone: phone.text,
                                password: password.text,
                                image: signUpController.imageFile!)
                            .then((value) {
                              print(value);
                          if (value['message'] ==
                              'Register Successfully, Please Complete Your Data') {
                            prefs.setString('token', value['data']['token']);
                            Get.snackbar('APP', value['message'],
                                snackPosition: SnackPosition.BOTTOM);
                            Get.off(InformationScreen());
                          }
                        });
                      },
                      text: Trans("Sign Up").tr,
                      margin: EdgeInsets.symmetric(horizontal: 18.h)),
                  SizedBox(height: 16.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                            LocalizationExtension("msg_already_have_an").tr,
                            style: theme.textTheme.bodyMedium)),
                    Padding(
                        padding: EdgeInsets.only(left: 2.h, top: 1.v),
                        child: InkWell(
                          child: Text(LocalizationExtension("lbl_sign_in").tr,
                              style: CustomTextStyles.titleSmallPrimary
                                  .copyWith(
                                      decoration: TextDecoration.underline)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                        )),
                    CustomImageView(
                        imagePath: ImageConstant.imgIconPrimary20x20,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 4.h, bottom: 2.v))
                  ]),
                  // SizedBox(height: 66.v),
                  // _buildSubContainer(context),
                ]),
              ))),
      // bottomNavigationBar: _buildButtonsContainer(context)
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: LocalizationExtension("lbl_welcome_to").tr,
                  style: CustomTextStyles.headlineLargeff030303),
            ]),
            textAlign: TextAlign.left));
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return Column(children: [
      GetBuilder(
          init: SignUpController(),
          builder: (SignUpController controller) {
            return Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    controller.imageFile != null
                        ? Image.file(
                            controller.imageFile!,
                            fit: BoxFit.cover,
                          )
                        : CustomImageView(
                            imagePath: ImageConstant.imgIconPrimary40x40,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            alignment: Alignment.center),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {
                              Get.bottomSheet(Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade800,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller
                                              .pickImage(ImageSource.camera)
                                              .then((value) => Get.back());
                                        },
                                        icon: Icon(
                                          Icons.camera,
                                          size: 50,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          controller
                                              .pickImage(ImageSource.gallery)
                                              .then((value) => Get.back());
                                        },
                                        icon: Icon(
                                          Icons.image,
                                          size: 50,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ));
                            },
                            icon: Icon(Icons.camera)))
                  ],
                ));
          }),
      SizedBox(
        height: 12,
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              decoration: AppDecoration.outlinePrimary3,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(LocalizationExtension("Name").tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: name,
                          hintText: LocalizationExtension("Enter Your Name").tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
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
                      Text(LocalizationExtension("lbl_email").tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: email,
                          hintText:
                              LocalizationExtension("msg_enter_your_email").tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
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
                      Text(LocalizationExtension("Phone").tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 8.v),
                      CustomTextFormField(
                          controller: phone,
                          hintText:
                              LocalizationExtension("Enter Your Phone").tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
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
                      Text(LocalizationExtension("lbl_password").tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 12.v),
                      CustomTextFormField(
                          controller: password,
                          hintText:
                              LocalizationExtension("msg_enter_your_password")
                                  .tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
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
                      SizedBox(height: 8.v),
                    ]),
              )))
    ]);
  }

  /// Section Widget

  /// Section Widget
  Widget _buildButtonsContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
            height: 48.v,
            width: 104.h,
            decoration: AppDecoration.greyWhite
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconRed500,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center)),
        Container(
            height: 48.v,
            width: 104.h,
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
            decoration: AppDecoration.greyWhite
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center))
      ]),
    );
  }
}
