import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/reports_edit_weight_dialog/reports_edit_weight_dialog.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_charts/charts.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: FutureBuilder(
                future: getDetails(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Map data = snapshot.data as Map;
                    return Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.fillWhiteA,
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Column(children: [
                                  _buildTopBg(context, data),
                                  SizedBox(height: 10.v),
                                  Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 18.h),
                                      padding:
                                      EdgeInsets.symmetric(vertical: 9.v),
                                      decoration: AppDecoration.fillWhiteA
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder8),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.h),
                                                    child: Text(
                                                        LocalizationExtension(
                                                            "lbl_report")
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleSmallLatoGray900Bold))),
                                            SizedBox(height: 37.v),
                                            Center(
                                                child: Container(
                                                    child: SfCartesianChart(
                                                      // Initialize category axis
                                                        primaryXAxis:
                                                        CategoryAxis(),
                                                        series: <LineSeries<
                                                            SalesData,
                                                            String>>[
                                                          LineSeries<
                                                              SalesData,
                                                              String>(
                                                            // Bind data source
                                                              dataSource: <
                                                                  SalesData>[
                                                                ...List
                                                                    .generate(
                                                                    data['data'][
                                                                    'exercises']
                                                                        .length,
                                                                        (
                                                                        index) =>
                                                                        SalesData(
                                                                            data['data'][
                                                                            'exercises']
                                                                            [index]
                                                                            ['date'],
                                                                            double
                                                                                .parse(
                                                                                data[
                                                                                'data']
                                                                                ['exercises'][index]
                                                                                ['calories_burn'])))
                                                              ],
                                                              xValueMapper:
                                                                  (
                                                                  SalesData sales,
                                                                  _) =>
                                                              sales.year,
                                                              yValueMapper:
                                                                  (
                                                                  SalesData sales,
                                                                  _) =>
                                                              sales.sales)
                                                        ]))),
                                          ])),
                                  SizedBox(height: 10.v),
                                ]))));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }

  /// Section Widget
  Widget _buildTopBg(BuildContext context, var data) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 5.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text(LocalizationExtension("lbl_reports").tr,
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
                                  Text(LocalizationExtension("lbl_workout").tr
                                      .toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Text(data['data']['total_count'].toString(),
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
                                  Text(
                                      LocalizationExtension("lbl_kcal")
                                          .tr
                                          .toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                          "${data['data']['total_calories_burn']}",
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
                                  Text(
                                      LocalizationExtension("lbl_minute")
                                          .tr
                                          .toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallLatoOnErrorContainer),
                                  Text(data['data']['total_time'].toString(),
                                      style: CustomTextStyles.titleSmallLato)
                                ]))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(LocalizationExtension("lbl_current").tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer),
              Text(LocalizationExtension("lbl_143_33_lbs").tr,
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
              Text(LocalizationExtension("lbl_heaviest").tr,
              style: CustomTextStyles.bodySmallRobotoSecondaryContainer),
              Text(LocalizationExtension("lbl_143_33_lbs").tr,
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
              child: Text(LocalizationExtension("lbl_lightest").tr,
                  style: CustomTextStyles.bodySmallRobotoSecondaryContainer)),
              Text(LocalizationExtension("lbl_143_33_lbs").tr,
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
                                  text:
                                  LocalizationExtension("lbl_bmi_kg_m").tr,
                                  style:
                                      CustomTextStyles.titleSmallLatoff192126),
                              TextSpan(
                                  text: LocalizationExtension("lbl_22").tr,
                                  style: theme.textTheme.labelSmall)
                            ]),
                            textAlign: TextAlign.left)),
                    Padding(
                        padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                        child: Text(LocalizationExtension("lbl_edit").tr,
                            style: CustomTextStyles.labelLargeLatoBlueA40002))
                  ])),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: _buildFrame(context,
                  current: LocalizationExtension("lbl_height").tr,
                  fTIN: LocalizationExtension("lbl_edit").tr, onTapFTIN: () {
                // onTapTxtFTIN(context);
              })),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: _buildFrame(context,
                  current: LocalizationExtension("lbl_current").tr,
                  fTIN: LocalizationExtension("lbl_0_ft_0_0_in").tr)),
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

  onTapTxtMORE(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }

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

  Future getDetails() async {
    var headers = {
      'Authorization':
      'Bearer 4|X77pvY5Oajoxwh8wFrXQvlPQWXnBRLErRT8rqTlKff6289c3'
    };
    var request = http.Request(
        'GET', Uri.parse('https://trainer.codexa.codes/api/user/my-exercises'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();

      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}