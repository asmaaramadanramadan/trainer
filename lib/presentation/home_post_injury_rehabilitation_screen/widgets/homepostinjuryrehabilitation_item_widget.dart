import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/details_screen/details_screen.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomepostinjuryrehabilitationItemWidget extends StatelessWidget {
  HomepostinjuryrehabilitationItemWidget(
    this.homepostinjuryrehabilitationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  var homepostinjuryrehabilitationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailsScreen(
          data: homepostinjuryrehabilitationItemModelObj,
        ));
      },
      child: Container(
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: NetworkImage(
                  homepostinjuryrehabilitationItemModelObj['image']),
              width: 100,
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    homepostinjuryrehabilitationItemModelObj['title'],
                    style: CustomTextStyles.labelLargeLatoGray900,
                    maxLines: 2,
                  ),
                ),
                // SizedBox(height: 10.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder2,
                  ),
                  child: Text(
                    homepostinjuryrehabilitationItemModelObj['time'],
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
                    homepostinjuryrehabilitationItemModelObj['level'],
                    style: CustomTextStyles.bodySmallLatoGray90011,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
