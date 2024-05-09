import '../models/search_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(
    this.searchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchItemModel searchItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.v,
      width: 354.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClock121,
            height: 18.adaptSize,
            width: 18.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    bottom: 9.v,
                  ),
                  child: Text(
                    searchItemModelObj.gardeniaplant!,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFirrcrosssmall,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 14.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
