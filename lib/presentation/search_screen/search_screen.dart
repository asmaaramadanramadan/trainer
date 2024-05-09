import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fty/widgets/custom_search_view.dart';
import 'widgets/search_item_widget.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/search_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchView(
                controller: TextEditingController(),
              ),
              SizedBox(height: 15.v),
              Text(
                "lbl_history".tr,
                style: CustomTextStyles.titleSmallMedium,
              ),
              SizedBox(height: 8.v),
              _buildSearch(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFiRrAngleLeft,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 13.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleNine(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.5.v),
            child: SizedBox(
              width: 354.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          );
        },
        itemCount: 0,
        itemBuilder: (context, index) {
          SearchItemModel model = SearchItemModel();
          return SearchItemWidget(
            model,
          );
        },
      ),
    );
  }
}
