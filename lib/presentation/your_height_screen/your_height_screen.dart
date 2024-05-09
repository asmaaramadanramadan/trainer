import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/your_height_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/your_height_bloc.dart';

class YourHeightScreen extends StatelessWidget {
  const YourHeightScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 13.v),
                  _buildSubContainer(context),
                  SizedBox(height: 10.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSubContainer, height: 26.v),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_what_s_your_height".tr,
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 5.v),
                  SizedBox(
                      height: 135.v,
                      width: 74.h,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("lbl_166".tr,
                                style: theme.textTheme.displayMedium)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(top: 32.v, right: 3.h),
                                child: Text("lbl_165".tr,
                                    style: theme.textTheme.displaySmall))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 10.h),
                                child: Text("lbl_164".tr,
                                    style: theme.textTheme.headlineMedium)))
                      ])),
                  SizedBox(height: 1.v),
                  SizedBox(
                      width: 156.h,
                      child: Divider(color: theme.colorScheme.primary)),
                  SizedBox(height: 1.v),
                  SizedBox(
                      height: 79.v,
                      width: 156.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 156.h,
                                child:
                                    Divider(color: theme.colorScheme.primary))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(right: 2.h, bottom: 12.v),
                                child: Text("lbl_cm".tr,
                                    style: CustomTextStyles
                                        .bodyLargeOpenSansPrimary))),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_167".tr,
                                style: theme.textTheme.displayLarge))
                      ])),
                  SizedBox(height: 4.v),
                  Text("lbl_168".tr, style: theme.textTheme.displayMedium),
                  Text("lbl_169".tr, style: theme.textTheme.displaySmall),
                  SizedBox(height: 5.v),
                  Text("lbl_170".tr, style: theme.textTheme.headlineMedium)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "msg_choose_your_exercises".tr));
  }

  /// Section Widget
  Widget _buildSubContainer(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildContainer(context, yourHeight: "lbl_information".tr),
          Spacer(flex: 57),
          _buildContainer(context, yourHeight: "lbl_your_height".tr),
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
            Text("msg_application_type".tr, style: theme.textTheme.bodySmall)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
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
