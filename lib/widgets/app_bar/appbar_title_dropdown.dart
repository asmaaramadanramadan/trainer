import 'package:fty/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 128.h,
        icon: Container(
          margin: EdgeInsets.only(left: 4.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        hintText: "msg_regular_exercise".tr,
        items: items,
      ),
    );
  }
}
