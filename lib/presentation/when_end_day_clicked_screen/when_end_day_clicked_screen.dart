import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:fty/widgets/custom_outlined_button.dart';
import 'models/when_end_day_clicked_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/when_end_day_clicked_bloc.dart';

class WhenEndDayClickedScreen extends StatelessWidget {
  const WhenEndDayClickedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90003.withOpacity(0.5),
        body: Container(
          width: 360.h,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 40.v),
                      child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        child: CustomImageView(),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionGray5001,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      margin: EdgeInsets.only(left: 95.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              SizedBox(
                width: 345.h,
                child: Text(
                  "msg_are_you_sure_want".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeInterWhiteA700,
                ),
              ),
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 45.h,
                ),
                child: Row(
                  children: [
                    CustomElevatedButton(
                      height: 42.v,
                      width: 128.h,
                      text: "lbl_yes".tr,
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleMediumInterPrimary,
                    ),
                    CustomOutlinedButton(
                      height: 42.v,
                      width: 121.h,
                      text: "lbl_no".tr,
                      margin: EdgeInsets.only(left: 32.h),
                      buttonStyle: CustomButtonStyles.outlineErrorContainer,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterErrorContainer,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
