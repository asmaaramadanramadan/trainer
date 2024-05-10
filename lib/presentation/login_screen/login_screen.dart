import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle.dart';
import 'package:fty/core/utils/validation_functions.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_checkbox_button.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/route_manager.dart';
import '../after_recently_search_page_screen/after_recently_search_page_screen.dart';
import '../app_navigation_screen/app_navigation_screen.dart';
import '../application_type_active_screen/application_type_active_screen.dart';
import '../application_type_screen/application_type_screen.dart';
import '../camera_screen/camera_screen.dart';
import '../chat_board_page/chat_board_page.dart';
import '../congratulation_of_account_screen/congratulation_of_account_screen.dart';
import '../create_a_new_password_screen/create_a_new_password_screen.dart';
import '../daily_calorie_dialog/daily_calorie_dialog.dart';
import '../details_screen/details_screen.dart';
import '../done_dialog/done_dialog.dart';
import '../exercise_screen/exercise_screen.dart';
import '../forgot_password_screen/forgot_password_screen.dart';
import '../history_screen/history_screen.dart';
import '../home_post_injury_rehabilitation_screen/home_post_injury_rehabilitation_screen.dart';
import '../home_regular_container_screen/home_regular_container_screen.dart';
import '../home_regular_page/home_regular_page.dart';
import '../information_screen/information_screen.dart';
import '../muscules_choices_screen/muscules_choices_screen.dart';
import '../my_account_page/my_account_page.dart';
import '../notification_screen/notification_screen.dart';
import '../reports_edit_height_dialog/reports_edit_height_dialog.dart';
import '../reports_edit_weight_dialog/reports_edit_weight_dialog.dart';
import '../reports_page/reports_page.dart';
import '../scan_one_bottomsheet/scan_one_bottomsheet.dart';
import '../scan_page/scan_page.dart';
import '../search_result_not_found_one_screen/search_result_not_found_one_screen.dart';
import '../search_screen/search_screen.dart';
import '../setting_screen/setting_screen.dart';
import '../sign_up_screen/sign_up_screen.dart';
import '../verification_code_forgot_password_screen/verification_code_forgot_password_screen.dart';
import '../when_end_day_clicked_screen/when_end_day_clicked_screen.dart';
import '../your_height_screen/your_height_screen.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/login_bloc.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            child: Column(children: [
                              Container(
                                  width: 306.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 41.h),
                                  child: Text("msg_please_enter_your".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargePoppinsOnPrimaryContainer_1)),
                              SizedBox(height: 29.v),
                              _buildContainer(context),
                              SizedBox(height: 58.v),
                              _buildSubContainer(context),
                              SizedBox(height: 5.v)
                            ]))))),
            bottomNavigationBar: _buildButtonsContainer(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true, title: AppbarSubtitle(text: "lbl_welcome_back".tr));
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return SizedBox(
        height: 414.v,
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
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 49.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_email".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 8.v),
                    CustomTextFormField(
                        controller: TextEditingController(),
                        hintText: "msg_enter_your_email".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        }),

                    SizedBox(height: 16.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_password".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 7.v),
                    CustomTextFormField(
                        controller: TextEditingController(),
                        hintText: "msg_enter_your_password".tr,
                        hintStyle: theme.textTheme.bodyMedium!,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                            onTap: () {
                              context.read<LoginBloc>().add(
                                  ChangePasswordVisibilityEvent(value: false));
                            },
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
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        contentPadding: EdgeInsets.only(
                            left: 12.h, top: 12.v, bottom: 12.v)),
                    SizedBox(height: 11.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Padding(
                          //   padding: EdgeInsets.only(bottom: 1.v),
                          //   child: BCustomCheckboxButton(
                          //       text: "lbl_remember_me".tr,
                          //       value: "",
                          //       textStyle: CustomTextStyles
                          //           .titleSmallOnPrimaryContainer,
                          //       onChange: (value) {
                          //         context
                          //             .read<LoginBloc>()
                          //             .add(ChangeCheckBoxEvent(value: value));
                          //       }),
                          // ),
                          GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Text("msg_forgot_password".tr,
                                  style: CustomTextStyles.bodyMediumPrimary
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)))
                        ]),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                      text: "lbl_login".tr,
                      isDisabled: false,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomePostInjuryRehabilitationScreen()));
                      },
                    ),
                    SizedBox(height: 15.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("msg_don_t_have_an_account".tr,
                          style: theme.textTheme.bodyMedium),
                      InkWell(
                        onTap: (){
                          Get.to(SignUpScreen());
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text("lbl_sign_up".tr,
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
        padding: EdgeInsets.only(bottom: 67.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              height: 48.v,
              width: 104.h,

              padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 11.v),
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

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
