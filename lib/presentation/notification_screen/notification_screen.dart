import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_one.dart';
import 'widgets/notification_item_widget.dart';
import 'models/notification_item_model.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/notification_bloc.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 17.h, top: 40.v, right: 17.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 51.v);
                    },
                    itemCount: 0,
                    itemBuilder: (context, index) {
                      NotificationItemModel model = NotificationItemModel();
                      return NotificationItemWidget(model);
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFiRrAngleLeftGray5001,
            margin: EdgeInsets.only(left: 32.h, top: 6.v, bottom: 29.v),
            onTap: () {
              onTapFiRrAngleLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_notifications".tr));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapFiRrAngleLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
