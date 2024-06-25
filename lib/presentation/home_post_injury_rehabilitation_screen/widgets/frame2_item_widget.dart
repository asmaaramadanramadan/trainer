import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/widgets/custom_icon_button.dart';
import 'package:get/get.dart';

import '../../details_screen/details_screen.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.data, {
    Key? key,
  }) : super(
          key: key,
        );

  var data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailsScreen(
          data: data,
        ));
      },
      child: SizedBox(
        height: 174.v,
        width: 280.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: data['image'],
              height: 174.v,
              radius: BorderRadius.circular(
                23.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.gradientBlackToBlack90001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 174.v,
                      width: 157.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 174.v,
                              width: 147.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(23.h),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(-0.65, 0.47),
                                  end: Alignment(0.92, 0.47),
                                  colors: [
                                    appTheme.blueA700,
                                    appTheme.blueA700.withOpacity(0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20.h,
                                bottom: 13.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 128.h,
                                    child: Text(
                                      data['type']??'',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .headlineSmallLatoWhiteA700,
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  SizedBox(
                                    width: 137.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFire,
                                          width: 14.h,
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                          decoration:
                                              AppDecoration.outlineBlack90001,
                                          child: Text(
                                            data['calories_burn']??'',
                                            style: CustomTextStyles
                                                .labelLargeLatoWhiteA700,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgLayer1,
                                          height: 16.v,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                          decoration:
                                              AppDecoration.outlineBlack90001,
                                          child: Text(
                                            data['time']??'',
                                            style: CustomTextStyles
                                                .labelLargeLatoWhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 68.v,
                        right: 20.h,
                        bottom: 68.v,
                      ),
                      child: CustomIconButton(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL19,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgForward,
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
    );
  }
}
