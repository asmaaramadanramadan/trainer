import 'package:fty/presentation/information_screen/controller/information_controller.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:fty/widgets/custom_text_form_field.dart';
import 'package:fty/widgets/custom_drop_down.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:get/get.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  DateTime selectedDate = DateTime.now();
  TextEditingController date = TextEditingController();
  TextEditingController weight = TextEditingController();
  InformationController informationController =
      Get.put(InformationController());
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        informationController.selectedTime =
            '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
        date = TextEditingController(
            text:
                '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}');
      });
  }

  String? _selectedGender;

  List<String> _genders = ['male', 'female'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 331.h,
                              margin: EdgeInsets.only(left: 16.h, right: 17.h),
                              child: Text(
                                  LocalizationExtension(
                                          "msg_a_coach_will_assign")
                                      .tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyLargePoppinsOnPrimaryContainer_1))),
                      SizedBox(height: 13.v),
                      _buildSubContainer(context),
                      SizedBox(height: 10.v),
                      _buildSubContainer1(context),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                              LocalizationExtension("lbl_date_of_birth").tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 8.v),
                      _buildInputField(context),
                      SizedBox(height: 14.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                  LocalizationExtension("msg_choose_you_gender")
                                      .tr,
                                  style: theme.textTheme.titleMedium)),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: DropdownButton<String>(
                              value: _selectedGender,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                              items: _genders.map((String gender) {
                                return DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(gender),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                              LocalizationExtension("msg_what_s_your_weight")
                                  .tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 9.v),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: CustomTextFormField(
                                  controller: weight,
                                  hintText:
                                      LocalizationExtension("Enter Your Weight")
                                          .tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.done))),
                      SizedBox(height: 9.v),
                      _buildLine(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitleTwo(
            text: LocalizationExtension("msg_choose_your_exercises").tr));
  }

  /// Section Widget
  Widget _buildSubContainer(BuildContext context) {
    return AnotherStepper(
        iconHeight: 59,
        iconWidth: 69,
        stepperDirection: Axis.horizontal,
        activeIndex: 0,
        inverted: true,
        stepperList: [
          StepperData(
              iconWidget: Column(children: [
            Container(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconamoonProfileBold,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.center)),
            // Text("lbl_information".tr,
            //     maxLines: 2,
            //     style: CustomTextStyles.bodySmallOnErrorContainer)
          ])),
          StepperData(
              iconWidget: Column(children: [
            Container(
                height: 34.adaptSize,
                width: 34.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlinePrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcBaselineHeight,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.center)),
            // Padding(
            //     padding: EdgeInsets.only(top: 9.v),
            //     child: Text("lbl_your_height".tr,
            //         style: theme.textTheme.bodySmall))
          ])),
          StepperData(
              iconWidget: Column(children: [
            Container(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGuidancePersonalTraining,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.center),
            ),
            // Padding(
            //     padding: EdgeInsets.only(top: 9.v),
            //     child: Text("msg_application_type".tr,
            //         style: theme.textTheme.bodySmall))
          ]))
        ]);
  }

  /// Section Widget
  Widget _buildSubContainer1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: AnotherStepper(
            stepperDirection: Axis.horizontal,
            activeIndex: 0,
            barThickness: 3,
            inverted: true,
            stepperList: [
              StepperData(),
              StepperData(),
              StepperData(),
              StepperData()
            ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.grey
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: CustomTextFormField(
                          controller: date,
                          hintText:
                              LocalizationExtension("msg_enter_your_date").tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done))),
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    width: 15.h,
                    margin: EdgeInsets.fromLTRB(12.h, 1.v, 2.h, 3.v)),
              )
            ]));
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              child: Opacity(
                  opacity: 0.1,
                  child: Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.39),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.2,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.42),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.3,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.46),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.4,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.49),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.53),
                          indent: 33.h,
                          endIndent: 10.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.6,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.56),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.7,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.6),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.64),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.9,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.67),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 33.h,
                      endIndent: 10.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 48.h,
                      endIndent: 14.h))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                      indent: 33.h,
                      endIndent: 10.h))),
          Expanded(
              child: Opacity(
                  opacity: 0.9,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.67),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.8,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.64),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.7,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.6),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.6,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.56),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.53),
                          indent: 33.h,
                          endIndent: 10.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.4,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.49),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.3,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.46),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.2,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.42),
                          indent: 48.h,
                          endIndent: 14.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.1,
                  child: Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary.withOpacity(0.39),
                          indent: 48.h,
                          endIndent: 14.h))))
        ]);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: LocalizationExtension("lbl_next").tr,
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
        onPressed: () {
          informationController.weight = weight.text;
          informationController.gender = _selectedGender!;
          onTapNext(context);
        });
  }

  /// Common widget
  Widget _buildIcBaselineHeight(
    BuildContext context, {
    required String icBaselineHeight,
    required String yourHeight,
  }) {
    return Column(children: [
      Container(
          height: 34.adaptSize,
          width: 34.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: AppDecoration.outlinePrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: CustomImageView(
              imagePath: icBaselineHeight,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.center)),
      SizedBox(height: 9.v),
      Text(yourHeight,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer))
    ]);
  }

  /// Navigates to the yourHeightScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.yourHeightScreen,
    );
  }
}
