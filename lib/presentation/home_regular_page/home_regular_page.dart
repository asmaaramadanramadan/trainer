import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:fty/widgets/app_bar/appbar_title_dropdown.dart';
import 'models/home_regular_model.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fty/widgets/custom_search_view.dart';
import 'widgets/homeregular_item_widget.dart';
import 'models/homeregular_item_model.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'widgets/frame1_item_widget.dart';
import 'models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/home_regular_bloc.dart';

class HomeRegularPage extends StatelessWidget {
  const HomeRegularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  _buildTopBg(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildBanner(context),
                                SizedBox(height: 17.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text("lbl_best_for_you".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90001Bold))),
                                SizedBox(height: 6.v),
                                _buildHomeRegular(context),
                                SizedBox(height: 18.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text("msg_popular_workouts".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90001Bold))),
                                SizedBox(height: 11.v),
                                _buildFrame(context),
                                SizedBox(height: 19.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text("lbl_challenge".tr,
                                            style: CustomTextStyles
                                                .titleMediumLatoWhiteA700Bold))),
                                SizedBox(height: 12.v),
                                _buildFrame1(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildTopBg(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 4.v),
          CustomAppBar(
              height: 54.v,
              leadingWidth: 72.h,
              leading: AppbarLeadingCircleimage(
                  imagePath: ImageConstant.imgEllipse2046,
                  margin: EdgeInsets.only(left: 18.h)),
              title: Container(
                  height: 51.67.v,
                  width: 128.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Stack(alignment: Alignment.center, children: [
                    AppbarSubtitleEight(
                        text: "lbl_hello_hager".tr,
                        margin: EdgeInsets.only(right: 5.h, bottom: 21.v)),
                    AppbarTitleDropdown(
                        margin: EdgeInsets.only(top: 27.v),
                        hintText: "msg_regular_exercise".tr,
                        items: [],
                        //homeRegularModelObj?.dropdownItemList ?? [],
                        onTap: (value) {
                          context
                              .read<HomeRegularBloc>()
                              .add(onSelected(value: value));
                        }),
                  ])),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgNotification,
                    margin: EdgeInsets.fromLTRB(18.h, 6.v, 18.h, 10.v))
              ]),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: CustomSearchView(
                        controller: TextEditingController(),
                        hintText: "lbl_search_bar".tr)),
                CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 3.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return SizedBox(
        height: 173.v,
        width: 354.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage189,
              height: 173.v,
              radius: BorderRadius.circular(22.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: AppDecoration.gradientBlackToBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder22),
                  child: Container(
                      width: 232.h,
                      margin: EdgeInsets.only(right: 121.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 28.h, vertical: 25.v),
                      decoration: AppDecoration.gradientGrayToBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL22),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 168.h,
                                margin: EdgeInsets.only(right: 6.h),
                                child: Text("msg_best_quarantine".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeLatoWhiteA700)),
                            SizedBox(height: 45.v),
                            Row(children: [
                              Text("lbl_see_more".tr,
                                  style:
                                      CustomTextStyles.labelLargeLatoPrimary),
                              CustomImageView(
                                  imagePath: ImageConstant.imgBack,
                                  height: 11.v,
                                  margin: EdgeInsets.only(left: 10.h, top: 4.v))
                            ]),
                            SizedBox(height: 3.v)
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildHomeRegular(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 83.v,
                crossAxisCount: 3,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 0,
            // homeRegularModelObj?.homeregularItemList.length ?? 0,
            itemBuilder: (context, index) {
              HomeregularItemModel model =
                  //  homeRegularModelObj?.homeregularItemList[index] ??
                  HomeregularItemModel();
              return HomeregularItemWidget(model, onTapOne: () {
                onTapOne(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
        height: 174.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 18.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 20.h);
            },
            itemCount: 0,
            itemBuilder: (context, index) {
              FrameItemModel model =
                  //homeRegularModelObj?.frameItemList[index] ??
                  FrameItemModel();
              return FrameItemWidget(model, onTapImgLowerBodyTraining: () {
                onTapImgLowerBodyTraining(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
        height: 105.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 18.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.h);
            },
            itemCount: 0,
            itemBuilder: (context, index) {
              Frame1ItemModel model =
                  //  homeRegularModelObj?.frame1ItemList[index] ??
                  Frame1ItemModel();
              return Frame1ItemWidget(model);
            }));
  }

  /// Navigates to the detailsScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailsScreen,
    );
  }

  /// Navigates to the detailsScreen when the action is triggered.
  onTapImgLowerBodyTraining(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailsScreen,
    );
  }
}
