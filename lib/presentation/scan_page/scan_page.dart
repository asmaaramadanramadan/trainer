import 'package:fty/widgets/custom_icon_button.dart';
import 'models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/scan_bloc.dart';
import 'package:fty/presentation/scan_one_bottomsheet/scan_one_bottomsheet.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup271),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup271),
                            fit: BoxFit.cover)),
                    child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 131.v),
                            decoration: AppDecoration.fillBlack90001,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 244.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTelevisionWhiteA700,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize),
                                  SizedBox(height: 194.v),
                                  _buildFrame(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_pancake".tr,
                            style: CustomTextStyles
                                .titleMediumBlack90001SemiBold_1),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("msg_native_to_see_details".tr,
                                style: CustomTextStyles.bodyMediumBlack90001))
                      ])),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, right: 12.h, bottom: 10.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL19,
                      onTap: () {
                        // onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)))
            ]));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [ScanOneBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  // onTapBtnArrowLeft(BuildContext context) {
  //   showModalBottomSheet(
  //       context: NavigatorService.navigatorKey.currentContext!,
  //       builder: (_) => ScanOneBottomsheet.builder(
  //           NavigatorService.navigatorKey.currentContext!),
  //       isScrollControlled: true);
  // }
}
