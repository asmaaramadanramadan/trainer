import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.blueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Container(
          height: 105.adaptSize,
          width: 105.adaptSize,
          decoration: AppDecoration.fillBlueA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 40.v,
                    width: 56.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.39),
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    right: 29.h,
                    bottom: 8.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: frame1ItemModelObj?.plankChallenge,
                        height: 26.v,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 12.v),
                      SizedBox(
                        width: 61.h,
                        child: Text(
                          frame1ItemModelObj.plankChallenge1!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeLatoWhiteA700Bold
                              .copyWith(
                            height: 1.19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
