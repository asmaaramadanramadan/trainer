import 'package:fty/presentation/home_regular_page/home_regular_page.dart';
import 'package:fty/presentation/reports_page/reports_page.dart';
import 'package:fty/presentation/chat_board_page/chat_board_page.dart';
import 'package:fty/presentation/scan_page/scan_page.dart';
import 'package:fty/presentation/my_account_page/my_account_page.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_ten.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fty/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fty/widgets/custom_search_view.dart';
import 'widgets/homepostinjuryrehabilitation_item_widget.dart';
import 'models/homepostinjuryrehabilitation_item_model.dart';
import 'models/home_post_injury_rehabilitation_model.dart';
import 'widgets/frame2_item_widget.dart';
import 'models/frame2_item_model.dart';
import 'widgets/frame3_item_widget.dart';
import 'models/frame3_item_model.dart';
import 'package:fty/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/home_post_injury_rehabilitation_bloc.dart';

class HomePostInjuryRehabilitationScreen extends StatelessWidget {
  HomePostInjuryRehabilitationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                              "lbl_best_for_you".tr,
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
                              "msg_popular_workouts".tr,
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
                              "lbl_challenge".tr,
                              style:
                                  CustomTextStyles.titleMediumLatoWhiteA700Bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildFrame1(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
              imagePath: ImageConstant.imgEllipse2046,
              margin: EdgeInsets.only(
                left: 18.h,
                bottom: 1.v,
              ),
            ),
            title: Container(
              height: 53.61.v,
              width: 207.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  AppbarSubtitleEight(
                    text: "lbl_hello_hager".tr,
                    margin: EdgeInsets.only(
                      right: 84.h,
                      bottom: 23.v,
                    ),
                  ),
                  AppbarSubtitleTen(
                    text: "msg_post_injury_rehabilitation".tr,
                    margin: EdgeInsets.only(top: 29.v),
                  ),
                ],
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
                    hintText: "lbl_search_bar".tr,
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
                        "msg_best_quarantine".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeLatoWhiteA700,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      children: [
                        Text(
                          "lbl_see_more".tr,
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
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 83.v,
          crossAxisCount: 3,
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 0,
        itemBuilder: (context, index) {
          HomepostinjuryrehabilitationItemModel model =
              HomepostinjuryrehabilitationItemModel();
          return HomepostinjuryrehabilitationItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
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
        itemCount: 0,
        itemBuilder: (context, index) {
          Frame2ItemModel model = Frame2ItemModel();
          return Frame2ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 105.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 18.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 0,
        itemBuilder: (context, index) {
          Frame3ItemModel model = Frame3ItemModel();
          return Frame3ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeRegularPage;
      case BottomBarEnum.Report:
        return AppRoutes.reportsPage;
      case BottomBarEnum.Chatbot:
        return AppRoutes.chatBoardPage;
      case BottomBarEnum.Scan:
        return AppRoutes.scanPage;
      case BottomBarEnum.Account:
        return AppRoutes.myAccountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeRegularPage:
        return HomeRegularPage();
      case AppRoutes.reportsPage:
        return ReportsPage();
      case AppRoutes.chatBoardPage:
        return ChatBoardPage();
      case AppRoutes.scanPage:
        return ScanPage();
      case AppRoutes.myAccountPage:
        return MyAccountPage();
      default:
        return DefaultWidget();
    }
  }
}
