import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/congratulation_of_account_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/congratulation_of_account_bloc.dart';

class CongratulationOfAccountScreen extends StatelessWidget {
  const CongratulationOfAccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 354.h,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                width: 107.h,
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_congratulation".tr,
                style: CustomTextStyles.titleMediumSemiBold18,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_your_account_has".tr,
                style: CustomTextStyles.titleSmallOnPrimaryContainer,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildOK(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildOK(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_ok".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 18.h,
        bottom: 32.v,
      ),
    );
  }
}
