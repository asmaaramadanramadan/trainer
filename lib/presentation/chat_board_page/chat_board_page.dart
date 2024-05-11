import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_icon_button.dart';
import 'models/chat_board_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/chat_board_bloc.dart';

// ignore_for_file: must_be_immutable
class ChatBoardPage extends StatelessWidget {
  const ChatBoardPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 49.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserGray40001,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(bottom: 39.v),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: CustomTextFormField(
                              controller: TextEditingController(),
                              hintText: "lbl_hello_there".tr,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 19.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillPrimary,
                              fillColor: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(right: 11.h),
                  child: _buildDescription(
                    context,
                    description: "msg_hello_there_how".tr,
                  ),
                ),
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 49.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserGray40001,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(bottom: 39.v),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 6.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 18.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL191,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                Text(
                                  "msg_show_me_what_can".tr,
                                  style:
                                      CustomTextStyles.bodyLargeInterWhiteA700,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(right: 11.h),
                  child: _buildDescription(
                    context,
                    description: "msg_as_an_ai_language".tr,
                  ),
                ),
                SizedBox(height: 40.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.outlineGray30003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 5.v,
                          bottom: 4.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "msg_stop_generating".tr,
                          style: CustomTextStyles.titleMediumInterBlack90001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTypeSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: TextEditingController(),
              hintText: "msg_ask_me_anything".tr,
              hintStyle: CustomTextStyles.titleMediumInterGray500,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 16.v,
                  bottom: 16.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMenu,
                  width: 23.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 60.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 20.v,
                bottom: 20.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
              fillColor: appTheme.gray50,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 54.v,
              width: 50.h,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineCyan,
              child: CustomImageView(
                imagePath: ImageConstant.imgSave,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDescription(
    BuildContext context, {
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Container(
                  width: 261.h,
                  margin: EdgeInsets.only(right: 6.h),
                  child: Text(
                    description,
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeInterGray90004.copyWith(
                      color: appTheme.gray90004,
                      height: 1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 9.v,
            bottom: 149.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionGray40001,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              SizedBox(height: 13.v),
              CustomImageView(
                imagePath: ImageConstant.imgIconShare,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
