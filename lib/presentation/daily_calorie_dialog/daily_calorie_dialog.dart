import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/daily_calorie_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/daily_calorie_bloc.dart';

class DailyCalorieDialog extends StatelessWidget {
  const DailyCalorieDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
              child: Container(
                  width: 354.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 30.v),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder22),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup, width: 107.h),
                        SizedBox(height: 26.v),
                        Text("lbl_congratulation".tr,
                            style: CustomTextStyles.titleMediumSemiBold18),
                        SizedBox(height: 5.v),
                        Text("msg_your_account_has".tr,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer),
                        SizedBox(height: 24.v),
                        CustomElevatedButton(
                            text: "lbl_let_s_start".tr,
                            onPressed: () {
                              onTapLetsStart(context);
                            })
                      ])))
        ]);
  }

  /// Navigates to the informationScreen when the action is triggered.
  onTapLetsStart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.informationScreen,
    );
  }
}
