import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/scan_one_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/scan_one_bloc.dart';

class ScanOneBottomsheet extends StatelessWidget {
  const ScanOneBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                      height: 60.adaptSize,
                                      width: 60.adaptSize,
                                      padding: EdgeInsets.all(13.h),
                                      decoration:
                                          IconButtonStyleHelper.fillBlack,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame239182)),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 4.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text("lbl_82".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeRoboto),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 3.v),
                                                    child: Text("lbl3".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumRoboto))
                                              ]))),
                                  SizedBox(height: 2.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Text("lbl_carbs".tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoOnErrorContainer))
                                ])),
                        Spacer(flex: 49),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.v),
                            child: Column(children: [
                              CustomIconButton(
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  decoration: IconButtonStyleHelper.fillBlack,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgClose60x60)),
                              SizedBox(height: 9.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_8".tr,
                                        style:
                                            CustomTextStyles.titleLargeRoboto),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 2.v, bottom: 4.v),
                                        child: Text("lbl3".tr,
                                            style: CustomTextStyles
                                                .titleMediumRoboto))
                                  ]),
                              SizedBox(height: 2.v),
                              Text("lbl_fat".tr,
                                  style: CustomTextStyles
                                      .bodyMediumRobotoOnErrorContainer)
                            ])),
                        Spacer(flex: 50),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomIconButton(
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  padding: EdgeInsets.all(13.h),
                                  decoration: IconButtonStyleHelper.fillBlack,
                                  onTap: () {
                                    onTapBtnClose(context);
                                  },
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgClose60x60)),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text("lbl_122".tr,
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 9.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 4.h),
                                  child: Text("lbl_protein".tr,
                                      style: CustomTextStyles
                                          .bodyMediumRobotoOnErrorContainer))
                            ])
                      ])),
              SizedBox(height: 7.v),
              _buildContentDetails(context),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                  height: 50.v,
                  text: "lbl_ok2".tr,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildContentDetails(BuildContext context) {
    return SizedBox(
        height: 301.v,
        width: 346.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_pancake_content".tr,
                            style:
                                CustomTextStyles.titleMediumBlack90001SemiBold),
                        SizedBox(height: 4.v),
                        SizedBox(
                            width: 344.h,
                            child: Text("msg_pancakes_typically".tr,
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumGray50001))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("lbl_ingredients".tr,
                            style: CustomTextStyles.titleLargeBlack90001)),
                    SizedBox(height: 1.v),
                    SizedBox(
                        width: 345.h,
                        child: Text("msg_to_make_pancakes".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallGray50001))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
