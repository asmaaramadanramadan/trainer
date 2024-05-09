import 'package:fty/widgets/custom_text_form_field.dart';
import 'models/reports_edit_height_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/reports_edit_height_bloc.dart';

// ignore_for_file: must_be_immutable
class ReportsEditHeightDialog extends StatelessWidget {
  const ReportsEditHeightDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          child: SingleChildScrollView(
            child: _buildFrame(context),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 18.h,
        right: 18.h,
        bottom: 372.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_height".tr,
            style: CustomTextStyles.titleMediumLatoGray900,
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: 114.h,
                controller: TextEditingController(),
                hintText: "lbl_0_ft".tr,
                hintStyle: CustomTextStyles.titleSmallLatoGray60002,
                borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                filled: false,
              ),
              CustomTextFormField(
                width: 114.h,
                controller: TextEditingController(),
                hintText: "lbl_143_33_lb".tr,
                hintStyle: CustomTextStyles.titleSmallLatoGray60002,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                filled: false,
              ),
              Container(
                width: 31.h,
                margin: EdgeInsets.only(bottom: 3.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlueGray,
                child: Text(
                  "lbl_kg2".tr,
                  style: CustomTextStyles.titleSmallLatoGray900,
                ),
              ),
              Container(
                width: 28.h,
                margin: EdgeInsets.only(bottom: 3.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillBlueA400,
                child: Text(
                  "lbl_lb".tr,
                  style: CustomTextStyles.titleSmallLatoWhiteA700,
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "lbl_cancel".tr.toUpperCase(),
                  style: CustomTextStyles.titleSmallLatoBlueA400,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_save".tr.toUpperCase(),
                    style: CustomTextStyles.titleSmallLatoBlueA400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
