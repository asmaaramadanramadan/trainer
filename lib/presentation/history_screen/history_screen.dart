import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/history_bloc.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 445.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildAppBar(context),
                    _buildFrame(context),
                    _buildMoreDate(context),
                  ],
                ),
              ),
              _buildHistory(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 377.v,
      leadingWidth: 47.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownWhiteA700,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 10.v,
          bottom: 339.v,
        ),
      ),
      title: AppbarSubtitleFive(
        text: "lbl_history".tr,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 12.v,
          bottom: 340.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 347.v),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillBlue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 103.h,
              margin: EdgeInsets.only(top: 30.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_jun_11_jul_17".tr,
                      style: CustomTextStyles.titleMediumLatoff030303,
                    ),
                    TextSpan(
                      text: "lbl_4_workouts".tr,
                      style: CustomTextStyles.titleSmallLatoff030303,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgFireOnerrorcontainer,
              width: 20.h,
              margin: EdgeInsets.only(
                top: 40.v,
                bottom: 4.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                top: 37.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_kcal".tr.toUpperCase(),
                    style: CustomTextStyles.bodySmallLatoOnErrorContainer,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_500".tr,
                      style: CustomTextStyles.titleSmallLato,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgLayer1Onerrorcontainer,
              height: 22.v,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 42.v,
                bottom: 6.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 37.v,
                right: 5.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_minute".tr.toUpperCase(),
                    style: CustomTextStyles.bodySmallLatoOnErrorContainer,
                  ),
                  Text(
                    "lbl_75".tr,
                    style: CustomTextStyles.titleSmallLato,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMoreDate(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 293.v,
        width: 336.h,
        margin: EdgeInsets.only(top: 64.v),
        child: CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            calendarType: CalendarDatePicker2Type.multi,
            firstDate: DateTime(DateTime.now().year - 5),
            lastDate: DateTime(DateTime.now().year + 5),
            selectedDayHighlightColor: Color(0XFFFFFFFF),
            firstDayOfWeek: 0,
            weekdayLabelTextStyle: TextStyle(
              color: appTheme.blueGray100,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
            selectedDayTextStyle: TextStyle(
              color: Color(0XFFBDBDBD),
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
            disabledDayTextStyle: TextStyle(
              color: appTheme.gray400,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
            weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
          ),
          value: [], //state.selectedDatesFromCalendar1 ?? [],
          onValueChanged: (dates) {
            // state.selectedDatesFromCalendar1 = dates;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 0, //historyModelObj?.historyItemList.length ?? 0,
        itemBuilder: (context, index) {
          HistoryItemModel model =
              // historyModelObj?.historyItemList[index] ??
              HistoryItemModel();
          return HistoryItemWidget(
            model,
          );
        },
      ),
    );
  }
}
