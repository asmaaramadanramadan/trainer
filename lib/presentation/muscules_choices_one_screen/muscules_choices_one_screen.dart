import 'package:fty/widgets/custom_icon_button.dart';
import 'package:fty/widgets/custom_checkbox_button.dart';
import 'package:fty/widgets/custom_drop_down.dart';
import 'models/muscules_choices_one_model.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/muscules_choices_one_bloc.dart';
import 'package:fty/presentation/done_one_dialog/done_one_dialog.dart';

class MusculesChoicesOneScreen extends StatelessWidget {
  const MusculesChoicesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 17.v),
                                    child: Text(
                                        "msg_post_injury_rehabilitation".tr,
                                        style: CustomTextStyles
                                            .titleMediumBlack90001)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 27.h, bottom: 20.v),
                                    child: CustomIconButton(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        child: CustomImageView()))
                              ])),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 331.h,
                              margin: EdgeInsets.only(left: 12.h, right: 13.h),
                              child: Text("msg_a_coach_will_assign".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyLargePoppinsOnPrimaryContainer_1))),
                      SizedBox(height: 30.v),
                      _buildInjurymuscles(context),
                      SizedBox(height: 6.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(7.h, 16.v, 30.h, 18.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgEmojionesadbutrelievedface,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize)),
                          hintText: "msg_choose_the_injury".tr,
                          items: [],
                          contentPadding: EdgeInsets.only(
                              left: 8.h, top: 15.v, bottom: 15.v)),
                      SizedBox(height: 25.v),
                      _buildClose(context),
                      SizedBox(height: 6.v),
                      _buildBodyInfoCardBg(context),
                      SizedBox(height: 25.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("msg_how_did_you_have".tr,
                                style: CustomTextStyles.bodyLargeBlack90001))
                      ]),
                      SizedBox(height: 6.v),
                      _buildBodyInfoCardBg1(context),
                      SizedBox(height: 25.v),
                      _buildClose1(context),
                      SizedBox(height: 6.v),
                      _buildBodyInfoCardBg2(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildInjurymuscles(BuildContext context) {
    return CustomCheckboxButton(
        text: "lbl_injury_muscles".tr, value: false, onChange: (value) {});
  }

  /// Section Widget
  Widget _buildClose(BuildContext context) {
    return CustomCheckboxButton(
        text: "msg_when_did_you_have".tr, value: false, onChange: (value) {});
  }

  /// Section Widget
  Widget _buildBodyInfoCardBg(BuildContext context) {
    return CustomTextFormField(controller: TextEditingController());
  }

  /// Section Widget
  Widget _buildBodyInfoCardBg1(BuildContext context) {
    return CustomTextFormField(controller: TextEditingController());
  }

  /// Section Widget
  Widget _buildClose1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 50.h),
        child: CustomCheckboxButton(
            text: "msg_how_much_time_required".tr,
            value: false,
            onChange: (value) {}));
  }

  /// Section Widget
  Widget _buildBodyInfoCardBg2(BuildContext context) {
    return CustomTextFormField(
        controller: TextEditingController(),
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 26.v),
        onPressed: () {
          //onTapNext(context);
        });
  }

  /// Displays a dialog with the [DoneOneDialog] content.
// onTapNext(BuildContext context) {
//   showDialog(
//       context: NavigatorService.navigatorKey.currentContext!,
//       builder: (_) => AlertDialog(
//             content: DoneOneDialog.builder(
//                 NavigatorService.navigatorKey.currentContext!),
//             backgroundColor: Colors.transparent,
//             contentPadding: EdgeInsets.zero,
//             insetPadding: const EdgeInsets.only(left: 0),
//           ));
// }
}
