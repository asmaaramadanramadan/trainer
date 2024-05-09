import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_title_searchview.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'models/search_result_not_found_one_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/search_result_not_found_one_bloc.dart';

class SearchResultNotFoundOneScreen extends StatelessWidget {
  const SearchResultNotFoundOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              _buildFiftyOne(context),
              SizedBox(height: 67.v),
              SizedBox(
                height: 288.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray300,
                      width: 169.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 17.h,
                        top: 12.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 267.v,
                        width: 204.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 45.h,
                          vertical: 2.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup193,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 51.v,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 4.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: _buildThirteen(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 192.v,
                        width: 161.h,
                        margin: EdgeInsets.only(
                          right: 16.h,
                          bottom: 20.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray300,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(left: 100.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 42.h,
                          vertical: 81.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup12,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_sorry".tr,
                              style: CustomTextStyles.displayMediumPoppins,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionPrimary,
                      height: 28.v,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 55.v,
                        right: 51.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 38.v,
                        right: 88.h,
                      ),
                      child: _buildThirteen(context),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              Text(
                "lbl_not_found".tr,
                style: CustomTextStyles.headlineSmallGray90004,
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 354.h,
                child: Text(
                  "msg_sorry_the_keyword".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargePoppinsOnPrimaryContainer
                      .copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 18.h),
        hintText: "lbl_barbie".tr,
        controller: TextEditingController(),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(10.h, 8.v, 18.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_results_for".tr,
                style: CustomTextStyles.titleMediumff030303,
              ),
              TextSpan(
                text: "lbl_barbie".tr,
                style: CustomTextStyles.titleMediumff056aff,
              ),
              TextSpan(
                text: "lbl".tr,
                style: CustomTextStyles.titleMediumff030303,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          "lbl_0_found".tr,
          style: CustomTextStyles.titleSmallPrimary_1,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirteen(BuildContext context) {
    return SizedBox(
      height: 18.adaptSize,
      width: 18.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 18.adaptSize,
            width: 18.adaptSize,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 11.adaptSize,
            width: 11.adaptSize,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
