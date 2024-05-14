import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import '../../widgets/custom_text_form_field.dart';
import '../information_screen/controller/information_controller.dart';
import 'models/your_height_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/your_height_bloc.dart';

class YourHeightScreen extends StatelessWidget {
  YourHeightScreen({Key? key}) : super(key: key);
  final TextEditingController height = TextEditingController();
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
                  Text(LocalizationExtension("msg_a_coach_will_assign").tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles
                          .bodyLargePoppinsOnPrimaryContainer_1),
                  SizedBox(height: 13.v),
                  _buildSubContainer(context),
                  SizedBox(height: 10.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSubContainer, height: 26.v),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          LocalizationExtension("msg_what_s_your_height").tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 22.v),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: CustomTextFormField(
                              controller: height,
                              hintText:
                                  LocalizationExtension("Enter Your Height").tr,
                              hintStyle: theme.textTheme.bodyMedium!,
                              textInputAction: TextInputAction.done))),
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
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildContainer(context,
              yourHeight: LocalizationExtension("lbl_information").tr),
          Spacer(flex: 57),
          _buildContainer(context,
              yourHeight: LocalizationExtension("lbl_your_height").tr),
          Spacer(flex: 42),
          Column(children: [
            CustomIconButton(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                    imagePath: ImageConstant.imgGuidancePersonalTraining)),
            SizedBox(height: 9.v),
            Text(LocalizationExtension("msg_application_type").tr,
                style: theme.textTheme.bodySmall)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: LocalizationExtension("lbl_next").tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          informationController.height = height.text;
          onTapNext(context);
        });
  }

  /// Common widget
  Widget _buildContainer(
    BuildContext context, {
    required String yourHeight,
  }) {
    return Column(children: [
      CustomIconButton(
          height: 34.adaptSize,
          width: 34.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.outlinePrimary,
          child: CustomImageView(
              imagePath: ImageConstant.imgIcBaselineHeightPrimary)),
      SizedBox(height: 9.v),
      Text(yourHeight,
          style: CustomTextStyles.bodySmallOnErrorContainer.copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1)))
    ]);
  }

  /// Navigates to the applicationTypeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.applicationTypeScreen,
    );
  }
}
