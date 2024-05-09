import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/done_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/done_bloc.dart';

class DoneDialog extends StatelessWidget {
  const DoneDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
              child: Container(
                  width: 354.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 26.v),
                  decoration: AppDecoration.white
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder13),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 164.v,
                        width: 174.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgAbstract,
                              height: 164.adaptSize,
                              width: 164.adaptSize,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgGroupGray5002,
                              height: 149.v,
                              alignment: Alignment.center)
                        ])),
                    SizedBox(height: 9.v),
                    Text("lbl_get_started".tr,
                        style: theme.textTheme.titleMedium),
                    CustomImageView(
                        imagePath: ImageConstant.imgAbstractPrimary,
                        height: 14.v),
                    SizedBox(height: 2.v),
                    SizedBox(
                        width: 313.h,
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                        text: "lbl_get_stared".tr,
                        onPressed: () {
                          onTapGetStared(context);
                        }),
                    SizedBox(height: 6.v)
                  ])))
        ]);
  }

  /// Navigates to the homeRegularContainerScreen when the action is triggered.
  onTapGetStared(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeRegularContainerScreen,
    );
  }
}
