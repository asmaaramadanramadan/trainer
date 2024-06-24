import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/exercise_screen/my_exercise.dart';
import 'package:fty/presentation/meals_screen/meals.dart';
import 'package:fty/presentation/work_plan/work_plan.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_icon_button.dart';
import 'package:get/get.dart';

import '../exercise_screen/exercise_screen.dart';
import 'controller/profile_controller.dart';
import 'edit_password.dart';
import 'profile_screen.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileSettings()));
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: LocalizationExtension("lbl_edit_profile").tr,
                      arrowRight: ImageConstant.imgArrowRight,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Get.to(WorkPlan());
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: 'Work Plan',
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Get.to(ExerciseScreen());
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: 'All Plan',
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Get.to(MealsScreen());
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: 'Meals',
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      Get.to(MyExerciseScreen());
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: 'My Plan',
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 16.v),
                  InkWell(
                    onTap: () {
                      Get.to(EditPassword());
                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: LocalizationExtension("lbl_change_password").tr,
                      arrowRight: ImageConstant.imgArrowRight,
                    ),
                  ),

                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      controller.DeleteAccount();

                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: LocalizationExtension("Delete Account").tr,
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  InkWell(
                    onTap: () {
                      controller.logout();

                    },
                    child: _buildAutoLayoutHorizontal(
                      context,
                      setting: LocalizationExtension("lbl_logout").tr,
                      arrowRight: ImageConstant.imgArrowRightRedA200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      title: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Row(
          children: [
            Container(
              height: 28.adaptSize,
              width: 28.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray10001,
                borderRadius: BorderRadius.circular(
                  14.h,
                ),
              ),
              child: Icon(Icons.arrow_back),
            ),
            AppbarSubtitleFour(
              text: LocalizationExtension("lbl_account").tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Common
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String setting,
    required String arrowRight,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgUilSetting,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 9.v,
          ),
          child: Text(
            setting,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: arrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v),
        ),
      ],
    );
  }
}
