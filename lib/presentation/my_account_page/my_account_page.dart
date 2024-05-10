import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fty/widgets/custom_switch.dart';
import 'models/my_account_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/my_account_bloc.dart';

// ignore_for_file: must_be_immutable
class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                children: [
                  _buildAcco(context),
                  SizedBox(height: 24.v),
                  _buildAutoLayoutHorizontal(
                    context,
                    setting: "lbl_edit_profile".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal(
                    context,
                    setting: "lbl_setting".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal3(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal(
                    context,
                    setting: "lbl_help_center".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal5(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal6(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal(
                    context,
                    setting: "lbl_change_password".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildAutoLayoutHorizontal(
                    context,
                    setting: "lbl_logout".tr,
                    arrowRight: ImageConstant.imgArrowRightRedA200,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      title: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Row(
          children: [
            Container(
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
              ),
              child: Icon(Icons.arrow_back),
            ),
            AppbarSubtitleFour(
              text: "lbl_account".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAcco(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.grey.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconContainer,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ahmed".tr,
                  style: CustomTextStyles.titleMediumBlack90001SemiBold_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_example_gmail_com".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 14.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgNotificationPrimary,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 14.v,
                bottom: 10.v,
              ),
              child: Text(
                "msg_manage_notification".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal5(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgMaterialSymbol,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 12.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_dark_mode".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Text(
            "lbl_not_effective".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            left: 8.h,
            top: 15.v,
            bottom: 15.v,
          ),
          value: false,
          onChange: (value) {
            context.read<MyAccountBloc>().add(ChangeSwitchEvent(value: value));
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal6(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgMdiLanguage,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 9.v,
          ),
          child: Text(
            "lbl_language".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_english_uk".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 12.v,
            bottom: 12.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String setting,
    required String arrowRight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgUilSetting,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 9.v,
          ),
          child: Text(
            setting,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: arrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}
