import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/home_post_injury_rehabilitation_screen/controller/home_controller.dart';
import 'package:fty/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_search_view.dart';
import 'package:get/get.dart';

import '../../main.dart';

import 'widgets/frame2_item_widget.dart';
import 'widgets/homepostinjuryrehabilitation_item_widget.dart';

class HomePostInjuryRehabilitationScreen extends StatelessWidget {
  HomePostInjuryRehabilitationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print(prefs.getString('token'));
    print(prefs.getString('token'));
    print(prefs.getString('token'));
    print(prefs.getString('token'));
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTopBg(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildBanner(context),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text(
                              LocalizationExtension("lbl_best_for_you").tr,
                              style: CustomTextStyles.titleMediumBlack90001Bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildHomepostinjuryrehabilitation(context),
                        SizedBox(height: 18.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text(
                              LocalizationExtension("msg_popular_workouts").tr,
                              style: CustomTextStyles.titleMediumBlack90001Bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildFrame(context),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text(
                              LocalizationExtension("lbl_challenge").tr,
                              style:
                                  CustomTextStyles.titleMediumLatoWhiteA700Bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBg(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomAppBar(
            height: 55.v,
            leadingWidth: 72.h,
            leading: AppbarLeadingCircleimage(
              imagePath: 'assets/onboarding/download.jpeg',
              margin: EdgeInsets.only(
                left: 18.h,
                bottom: 1.v,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppbarSubtitleEight(
                text: LocalizationExtension("Hallo").tr,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgArrowdown,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 30.v,
                  right: 1.h,
                ),
              ),
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgNotification,
                margin: EdgeInsets.fromLTRB(19.h, 6.v, 19.h, 10.v),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: TextEditingController(),
                    hintText: LocalizationExtension("lbl_search_bar").tr,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMegaphone,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return SizedBox(
      height: 173.v,
      width: 354.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage189,
            height: 173.v,
            radius: BorderRadius.circular(
              22.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.gradientBlackToBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: Container(
                width: 232.h,
                margin: EdgeInsets.only(right: 121.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.gradientGrayToBlack.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 168.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Text(
                        LocalizationExtension("msg_best_quarantine").tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeLatoWhiteA700,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      children: [
                        Text(
                          LocalizationExtension("lbl_see_more").tr,
                          maxLines: 4,
                          style: CustomTextStyles.labelLargeLatoPrimary,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBack,
                          height: 11.v,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 4.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomepostinjuryrehabilitation(BuildContext context) {
    return FutureBuilder(
        future: homeController.getBestForYou(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map bestForYou = snapshot.data as Map;
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 110,
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: bestForYou['data'].length,
              itemBuilder: (context, index) {
                return HomepostinjuryrehabilitationItemWidget(
                  bestForYou['data'][index],
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return FutureBuilder(
        future: homeController.getPopular(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map data = snapshot.data as Map;
            return SizedBox(
              height: 174.v,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 18.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 20.h,
                  );
                },
                itemCount: data['data'].length,
                itemBuilder: (context, index) {
                  return Frame2ItemWidget(
                    data['data'][index],
                  );
                },
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

}
