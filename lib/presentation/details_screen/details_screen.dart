import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:readmore/readmore.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'models/details_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/details_bloc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildVideoSection(context),
                                    SizedBox(height: 21.v),
                                    Text("lbl_jumping_jack".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer),
                                    SizedBox(height: 3.v),
                                    Text("msg_easy_390_calories".tr,
                                        style: CustomTextStyles
                                            .bodySmallGray60003),
                                    SizedBox(height: 25.v),
                                    Text("lbl_descriptions".tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                        width: 343.h,
                                        child: ReadMoreText(
                                            "msg_a_jumping_jack".tr,
                                            trimLines: 4,
                                            colorClickableText:
                                                appTheme.indigoA100,
                                            trimMode: TrimMode.Line,
                                            trimCollapsedText:
                                                "lbl_read_more".tr,
                                            moreStyle: CustomTextStyles
                                                .bodySmallGray60003,
                                            lessStyle: CustomTextStyles
                                                .bodySmallGray60003)),
                                    SizedBox(height: 17.v),
                                    _buildStepTitle(context),
                                    SizedBox(height: 12.v),
                                    _buildStep1(context),
                                    SizedBox(height: 4.v),
                                    _buildTwo(context),
                                    SizedBox(height: 4.v),
                                    _buildThree(context),
                                    SizedBox(height: 4.v),
                                    _buildStep4(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildStartExercising(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 389.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorOnerrorcontainer,
            margin: EdgeInsets.fromLTRB(23.h, 12.v, 357.h, 12.v)));
  }

  /// Section Widget
  Widget _buildVideoSection(BuildContext context) {
    return CustomImageView(
        imagePath: ImageConstant.imgVideoSection, height: 150.v);
  }

  /// Section Widget
  Widget _buildStepTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 39.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_how_to_do_it".tr,
              style: CustomTextStyles.titleMediumSemiBold),
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
              child: Text("lbl_4_steps".tr,
                  style: CustomTextStyles.labelLargeOnPrimaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildStep1(BuildContext context) {
    return SizedBox(
        height: 104.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 37.h),
                  child: SizedBox(
                      height: 79.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: theme.colorScheme.primary)))),
          Align(
              alignment: Alignment.topCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 61.v),
                        child: Text("lbl_01".tr,
                            style: CustomTextStyles.bodyMediumPrimary)),
                    Container(
                        margin: EdgeInsets.only(left: 14.h, bottom: 61.v),
                        padding: EdgeInsets.all(3.h),
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(5.h)))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_spread_your_arms".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnErrorContainer),
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 284.h,
                                      child: Text("msg_to_make_the_gestures".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall))
                                ])))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(children: [
        SizedBox(
            width: 47.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_02".tr, style: CustomTextStyles.bodyMediumPrimary),
                  Container(
                      padding: EdgeInsets.all(3.h),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Container(
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(5.h))))
                ])),
        SizedBox(height: 4.v),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: EdgeInsets.only(right: 9.h),
                child: SizedBox(
                    height: 79.v,
                    child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primary))))
      ]),
      Padding(
          padding: EdgeInsets.only(left: 15.h, bottom: 22.v),
          child: _buildStepText(context,
              clappingBothHands: "lbl_rest_at_the_toe".tr,
              description: "msg_the_basis_of_this".tr))
    ]);
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 13.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(children: [
            SizedBox(
                width: 47.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_03".tr,
                          style: CustomTextStyles.bodyMediumPrimary),
                      Container(
                          padding: EdgeInsets.all(3.h),
                          decoration: AppDecoration.outlinePrimary2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Container(
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(5.h))))
                    ])),
            SizedBox(height: 4.v),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 9.h),
                    child: SizedBox(
                        height: 79.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: theme.colorScheme.primary))))
          ]),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h, bottom: 23.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_adjust_foot_movement".tr,
                            style: CustomTextStyles.bodyMediumOnErrorContainer),
                        SizedBox(height: 4.v),
                        SizedBox(
                            width: 278.h,
                            child: Text("msg_jumping_jack_is".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildStep4(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 77.v),
          child: Text("lbl_04".tr, style: CustomTextStyles.bodyMediumPrimary)),
      Container(
          margin: EdgeInsets.only(left: 9.h, bottom: 77.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlinePrimary2
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(5.h)))),
      Padding(
          padding: EdgeInsets.only(left: 15.h),
          child: _buildStepText(context,
              clappingBothHands: "msg_clapping_both_hands".tr,
              description: "msg_this_cannot_be_taken".tr))
    ]);
  }

  /// Section Widget
  Widget _buildStartExercising(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_start_exercising".tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          onTapStartExercising(context);
        });
  }

  /// Common widget
  Widget _buildStepText(
    BuildContext context, {
    required String clappingBothHands,
    required String description,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(clappingBothHands,
                  style: CustomTextStyles.bodyMediumOnErrorContainer.copyWith(
                      color:
                          theme.colorScheme.onErrorContainer.withOpacity(1))),
              SizedBox(height: 4.v),
              SizedBox(
                  width: 288.h,
                  child: Text(description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onPrimaryContainer)))
            ])));
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapStartExercising(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.cameraScreen,
    );
  }
}
