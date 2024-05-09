import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(top: 1.v),
                      decoration: AppDecoration.fillGray600.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUser18x18,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        notificationItemModelObj.exercisesReminder!,
                        style: CustomTextStyles.labelLargeGray90001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Text(
                  notificationItemModelObj.title!,
                  style: CustomTextStyles.bodySmallGray90001,
                ),
                SizedBox(height: 4.v),
                Text(
                  notificationItemModelObj.description!,
                  style: CustomTextStyles.bodySmallGray90001,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              children: [
                Text(
                  notificationItemModelObj.distance!,
                  style: CustomTextStyles.labelLargeGray90001,
                ),
                SizedBox(height: 11.v),
                CustomImageView(
                  imagePath: notificationItemModelObj?.mago,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
