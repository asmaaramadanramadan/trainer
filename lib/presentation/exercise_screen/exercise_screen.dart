import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/exercise_bloc.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFrameFive(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 11.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 4.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame34224,
                          width: 8.h,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_week_1".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame34256,
                                  height: 36.v,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_2".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame2(context),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_3".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  frame3: "lbl_42".tr,
                                  frame4: "lbl_5".tr,
                                  frame5: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_4".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  frame3: "lbl_42".tr,
                                  frame4: "lbl_5".tr,
                                  frame5: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_5".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  frame3: "lbl_42".tr,
                                  frame4: "lbl_5".tr,
                                  frame5: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_6".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  frame3: "lbl_42".tr,
                                  frame4: "lbl_5".tr,
                                  frame5: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_week_7".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 8.v),
                                _buildFrame(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  frame3: "lbl_42".tr,
                                  frame4: "lbl_5".tr,
                                  frame5: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                Spacer(
                                  flex: 45,
                                ),
                                Spacer(
                                  flex: 54,
                                ),
                                SizedBox(height: 73.v),
                                _buildFrame1(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  four: "lbl_42".tr,
                                  frame3: "lbl_5".tr,
                                  frame4: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                                Text(
                                  "lbl_week_9".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                _buildFrame1(
                                  context,
                                  frame: "lbl_1".tr,
                                  frame1: "lbl_23".tr,
                                  frame2: "lbl_3".tr,
                                  four: "lbl_42".tr,
                                  frame3: "lbl_5".tr,
                                  frame4: "lbl_6".tr,
                                  seven: "lbl_7".tr,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                      height: 43.v,
                      text: "lbl_go".tr.toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillBlueATL8,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Container(
      height: 111.v,
      width: double.maxFinite,
      decoration: AppDecoration.fillGray400,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage186,
            height: 111.v,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.fillBlack,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: 28.v,
                    leadingWidth: 47.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowDownWhiteA700,
                      margin: EdgeInsets.only(left: 19.h),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_7x4".tr,
                              style: CustomTextStyles.bodyLargeLatoffffffff,
                            ),
                            TextSpan(
                              text: "lbl_challenge".tr.toUpperCase(),
                              style: CustomTextStyles.bodyLargeLatoffffffff,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 33.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_27_days_left".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          "lbl_4".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame34195,
                    height: 4.v,
                    margin: EdgeInsets.only(left: 19.h),
                  ),
                  SizedBox(height: 11.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: AppDecoration.fillGray60001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder19,
            ),
            child: Row(
              children: [
                Container(
                  height: 36.v,
                  width: 43.h,
                  padding: EdgeInsets.fromLTRB(13.h, 10.v, 12.h, 10.v),
                  decoration: AppDecoration.outlineWhiteA700,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFeCheck,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    "lbl_23".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    "lbl_3".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    "lbl_42".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    "lbl_5".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    "lbl_6".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "lbl_7".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          width: 28.h,
          margin: EdgeInsets.only(left: 5.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String frame,
    required String frame1,
    required String frame2,
    required String frame3,
    required String frame4,
    required String frame5,
    required String seven,
  }) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: AppDecoration.fillGray60001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder19,
            ),
            child: Row(
              children: [
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame1,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame2,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame3,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame4,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame5,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    seven,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          width: 28.h,
          margin: EdgeInsets.only(left: 5.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String frame,
    required String frame1,
    required String frame2,
    required String four,
    required String frame3,
    required String frame4,
    required String seven,
  }) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: AppDecoration.fillGray60001,
            child: Row(
              children: [
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(horizontal: 19.h),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame1,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame2,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 16.h,
                  ),
                  decoration: AppDecoration.outlineGray5003,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 10.v),
                      Text(
                        four,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame3,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Container(
                  width: 43.h,
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  decoration: AppDecoration.outlineGray5003,
                  child: Text(
                    frame4,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 10.v,
                  ),
                  child: Text(
                    seven,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          height: 1.v,
          margin: EdgeInsets.only(left: 5.h),
        ),
      ],
    );
  }
}
