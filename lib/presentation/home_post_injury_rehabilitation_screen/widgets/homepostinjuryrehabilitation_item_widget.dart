import '../models/homepostinjuryrehabilitation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class HomepostinjuryrehabilitationItemWidget extends StatelessWidget {
  HomepostinjuryrehabilitationItemWidget(
    this.homepostinjuryrehabilitationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepostinjuryrehabilitationItemModel
      homepostinjuryrehabilitationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: homepostinjuryrehabilitationItemModelObj?.bellyfatburner,
            height: 69.adaptSize,
            width: 69.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  homepostinjuryrehabilitationItemModelObj.bellyFatBurner1!,
                  style: CustomTextStyles.labelLargeLatoGray900,
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 46.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Text(
                    homepostinjuryrehabilitationItemModelObj.time!,
                    style: CustomTextStyles.bodySmallLatoGray90011,
                  ),
                ),
                SizedBox(height: 3.v),
                Container(
                  width: 57.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Text(
                    homepostinjuryrehabilitationItemModelObj.beginner!,
                    style: CustomTextStyles.bodySmallLatoGray90011,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
