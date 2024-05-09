import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.h, 15.v, 30.h, 14.v),
      decoration: AppDecoration.outlineWhiteA,
      child: Row(
        children: [
          CustomImageView(
            imagePath: historyItemModelObj?.image,
            width: 40.h,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 123.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_jun_16_10_48_am".tr,
                          style: CustomTextStyles.bodyMediumLatoff92929d,
                        ),
                        TextSpan(
                          text: "lbl_abs_beginning".tr.toUpperCase(),
                          style: CustomTextStyles.titleMediumLatoff030303_1,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: historyItemModelObj?.kcal,
                      width: 14.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        historyItemModelObj.kcalCounter!,
                        style: CustomTextStyles.labelLargeLato,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1Onerrorcontainer,
                      height: 16.v,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        historyItemModelObj.time!,
                        style: CustomTextStyles.labelLargeLato,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
