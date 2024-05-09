import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fty/widgets/custom_switch.dart';
import 'models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/setting_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key})
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
            padding: EdgeInsets.only(top: 15.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                children: [
                  _buildAcco(context),
                  SizedBox(height: 18.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_my_card".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_change_password".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_payment".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_invite_friends".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "msg_manage_notification".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildTalkBack(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_about_us".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_rate_us".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_country".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_contact_us".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_terms_of_use".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_privacy_policy".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_others".tr,
                    arrowRight: ImageConstant.imgArrowRight,
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  _buildChangePassword(
                    context,
                    changePassword: "lbl_delete_account".tr,
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
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnerrorcontainer,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 12.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_setting".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.fromLTRB(18.h, 14.v, 18.h, 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAcco(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.grey.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ahmed_hossam".tr,
                  style: CustomTextStyles.titleMediumBlack90001SemiBold_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_ahmdhsammhmd2_gmail_com".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ],
            ),
          ),
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
  Widget _buildTalkBack(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFiRrVolume,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 12.v,
            bottom: 11.v,
          ),
          child: Text(
            "lbl_talkback".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Text(
            "lbl_effective".tr,
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
            // context.read<SettingBloc>().add(ChangeSwitchEvent(value: value));
          },
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String changePassword,
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
            imagePath: ImageConstant.imgCarbonPassword,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 9.v,
          ),
          child: Text(
            changePassword,
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
