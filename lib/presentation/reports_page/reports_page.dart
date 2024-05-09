import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'models/reports_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/reports_bloc.dart';
import 'package:fty/presentation/reports_edit_weight_dialog/reports_edit_weight_dialog.dart';
import 'package:fty/presentation/reports_edit_height_dialog/reports_edit_height_dialog.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.v),
                        child: Column(children: [
                          _buildTopBg(context),
                          SizedBox(height: 10.v),
                          _buildMoreDate(context),
                          SizedBox(height: 10.v),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 18.h),
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: Text("lbl_report".tr,
                                                style: CustomTextStyles
                                                    .titleSmallLatoGray900Bold))),
                                    SizedBox(height: 6.v),
                                    _buildFrame1(context),
                                    SizedBox(height: 9.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.h),
                                            child: Text("lbl_lbs".tr,
                                                style: CustomTextStyles
                                                    .labelLargeLatoGray900Bold))),
                                    SizedBox(height: 37.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "lbl_143_8".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallRobotoGray700dd9)),
                                                    SizedBox(height: 24.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "lbl_143_6".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallRobotoGray700dd9)),
                                                    SizedBox(height: 24.v),
                                                    Text("lbl_143_4".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallRobotoGray700dd9),
                                                    SizedBox(height: 24.v),
                                                    Text("lbl_143_2".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallRobotoGray700dd9),
                                                    SizedBox(height: 24.v),
                                                    Text("lbl_143".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallRobotoGray700dd9)
                                                  ]),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFrame34314,
                                                  height: 151.v,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h))
                                            ])),
                                    SizedBox(height: 4.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 73.h, right: 23.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text("lbl_14".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallRobotoGray700dd),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_15".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_16".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_17".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_18".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_19".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Text("lbl_20".tr,
                                                          style: CustomTextStyles
                                                              .bodySmallRobotoGray700dd))
                                                ]))),
                                    SizedBox(height: 19.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Row(children: [
                                              Container(
                                                  height: 12.adaptSize,
                                                  width: 12.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueA40002)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: Text("lbl_weight".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeRobotoSecondaryContainer))
                                            ]))),
                                    SizedBox(height: 15.v),
                                    _buildFrame2(context),
                                    SizedBox(height: 7.v),
                                    _buildFrame3(context),
                                    SizedBox(height: 7.v),
                                    _buildFrame4(context),
                                    SizedBox(height: 9.v)
                                  ])),
                          SizedBox(height: 10.v),
                          _buildMoreDate1(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTopBg(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_reports".tr,
                  style: CustomTextStyles.titleLargeLatoWhiteA700Bold),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFrame34194,
                            height: 23.v,
                            margin: EdgeInsets.only(top: 3.v, bottom: 5.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_workout".tr.toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Text("lbl_5".tr,
                                      style: CustomTextStyles.titleSmallLato)
                                ])),
                        Spacer(flex: 50),
                        CustomImageView(
                            imagePath: ImageConstant.imgFireOnerrorcontainer,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 4.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_kcal".tr.toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("lbl_500".tr,
                                          style:
                                              CustomTextStyles.titleSmallLato))
                                ])),
                        Spacer(flex: 50),
                        CustomImageView(
                            imagePath: ImageConstant.imgLayer1Onerrorcontainer,
                            height: 22.v,
                            margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_minute".tr.toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Text("lbl_75".tr,
                                      style: CustomTextStyles.titleSmallLato)
                                ]))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildMoreDate(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 18.h),
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_history".tr,
                            style: CustomTextStyles.titleSmallLatoGray900Bold),
                        GestureDetector(
                            onTap: () {
                              onTapTxtMORE(context);
                            },
                            child: Text("lbl_more".tr,
                                style: CustomTextStyles
                                    .labelLargeLatoLightblueA700))
                      ])),
              SizedBox(height: 6.v),
              SizedBox(
                  height: 101.v,
                  width: 354.h,
                  child: EasyDateTimeLine(
                      initialDate: DateTime.now(),
                      // state.selectedDatesFromCalendar1 ?? DateTime.now(),
                      locale: 'en_US',
                      headerProps: EasyHeaderProps(
                          selectedDateFormat: SelectedDateFormat.fullDateDMY,
                          monthPickerType: MonthPickerType.switcher,
                          showHeader: false),
                      dayProps: EasyDayProps(),
                      onDateChange: (selectedDate) {
                        //state.selectedDatesFromCalendar1 = selectedDate;
                        selectedDate;
                      })),
              SizedBox(height: 7.v),
              Text("lbl_records".tr.toUpperCase(),
                  style: CustomTextStyles.labelLargeLatoLightblueA700)
            ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.v),
        decoration: AppDecoration.fillBlueGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Text("lbl_weight".tr,
                  style: CustomTextStyles.labelLargeLatoGray800)),
          CustomImageView(
              imagePath: ImageConstant.imgIcBaselineAdd,
              height: 22.adaptSize,
              width: 22.adaptSize,
              onTap: () {
                onTapImgIcBaselineAdd(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_current".tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer),
          Text("lbl_143_33_lbs".tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer)
        ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_heaviest".tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer),
          Text("lbl_143_33_lbs".tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer)
        ]));
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_lightest".tr,
                  style: CustomTextStyles.bodySmallRobotoSecondaryContainer)),
          Text("lbl_143_33_lbs".tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer)
        ]));
  }

  /// Section Widget
  Widget _buildMoreDate1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 18.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: EdgeInsets.fromLTRB(15.h, 7.v, 15.h, 6.v),
              decoration: AppDecoration.outlineGray60001,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_bmi_kg_m".tr,
                                  style:
                                      CustomTextStyles.titleSmallLatoff192126),
                              TextSpan(
                                  text: "lbl_22".tr,
                                  style: theme.textTheme.labelSmall)
                            ]),
                            textAlign: TextAlign.left)),
                    Padding(
                        padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                        child: Text("lbl_edit".tr,
                            style: CustomTextStyles.labelLargeLatoBlueA40002))
                  ])),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: _buildFrame(context,
                  current: "lbl_height".tr, fTIN: "lbl_edit".tr, onTapFTIN: () {
                // onTapTxtFTIN(context);
              })),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: _buildFrame(context,
                  current: "lbl_current".tr, fTIN: "lbl_0_ft_0_0_in".tr)),
          SizedBox(height: 7.v)
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String current,
    required String fTIN,
    Function? onTapFTIN,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(current,
          style: CustomTextStyles.titleSmallLatoBlueA40002
              .copyWith(color: appTheme.blueA40002)),
      GestureDetector(
          onTap: () {
            onTapFTIN?.call();
          },
          child: Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(fTIN,
                  style: CustomTextStyles.labelLargeLatoSecondaryContainer
                      .copyWith(
                          decoration: TextDecoration.underline,
                          color: theme.colorScheme.secondaryContainer))))
    ]);
  }

  /// Navigates to the historyScreen when the action is triggered.
  onTapTxtMORE(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }

  /// Displays a dialog with the [ReportsEditWeightDialog] content.
  onTapImgIcBaselineAdd(BuildContext context) {
    showDialog(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => AlertDialog(
              content: ReportsEditWeightDialog.builder(
                  NavigatorService.navigatorKey.currentContext!),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [ReportsEditHeightDialog] content.
  // onTapTxtFTIN(BuildContext context) {
  //   showDialog(
  //       context: NavigatorService.navigatorKey.currentContext!,
  //       builder: (_) => AlertDialog(
  //             content: ReportsEditHeightDialog.builder(
  //                 NavigatorService.navigatorKey.currentContext!),
  //             backgroundColor: Colors.transparent,
  //             contentPadding: EdgeInsets.zero,
  //             insetPadding: const EdgeInsets.only(left: 0),
  //           ));
  // }
}
