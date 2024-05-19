import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:fty/presentation/details_screen/controller/details_controller.dart';
import 'package:fty/widgets/app_bar/appbar_leading_image.dart';
import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late VideoPlayerController _videoPlayerController1;
  ChewieController? _chewieController;
  DetailsController detailsController = Get.put(DetailsController());

  @override
  void initState() {
    initializePlayer();
    super.initState();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 =
        VideoPlayerController.network(widget.data['video']);

    await Future.wait([
      _videoPlayerController1.initialize(),
    ]);
    _createChewieController();
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController1.pause();
    _videoPlayerController1.dispose();

    _chewieController?.pause();
    _chewieController?.dispose();

    super.dispose();
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
    );
  }

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
                                    Text(widget.data['title'],
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer),
                                    SizedBox(height: 3.v),
                                    Text(widget.data['calories_burn'],
                                        style: CustomTextStyles
                                            .bodySmallGray60003),
                                    SizedBox(height: 25.v),
                                    Text(
                                        LocalizationExtension(
                                                "lbl_descriptions")
                                            .tr,
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                        width: 343.h,
                                        child: ReadMoreText(
                                            widget.data['description'],
                                            trimLines: 4,
                                            colorClickableText:
                                                appTheme.indigoA100,
                                            trimMode: TrimMode.Line,
                                            trimCollapsedText:
                                                LocalizationExtension(
                                                        "lbl_read_more")
                                                    .tr,
                                            moreStyle: CustomTextStyles
                                                .bodySmallGray60003,
                                            lessStyle: CustomTextStyles
                                                .bodySmallGray60003)),
                                    SizedBox(height: 17.v),
                                    _buildStepTitle(context),
                                    SizedBox(height: 12.v),
                                    ...List.generate(
                                      widget.data['steps'].length,
                                      (index) => _buildStep1(context,
                                          widget.data['steps'][index], index),
                                    )
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
            onTap: () => Get.back(),
            imagePath: ImageConstant.imgVectorOnerrorcontainer,
            margin: EdgeInsets.fromLTRB(23.h, 12.v, 357.h, 12.v)));
  }

  /// Section Widget
  Widget _buildVideoSection(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(
                controller: _chewieController!,
              )
            : const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                ],
              ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStepTitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 39.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(LocalizationExtension("lbl_how_to_do_it").tr,
              style: CustomTextStyles.titleMediumSemiBold),
          Padding(
              padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
              child: Text(widget.data['steps_count'],
                  style: CustomTextStyles.labelLargeOnPrimaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildStep1(BuildContext context, var stepData, int index) {
    return SizedBox(
        height: 104.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 37.h, top: 10, bottom: 10),
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
                        child: Text(index.toString(),
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
                                  Text(stepData['title'],
                                      style: CustomTextStyles
                                          .bodyMediumOnErrorContainer),
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 284.h,
                                      child: Text(stepData['description'],
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
                  Text(LocalizationExtension("lbl_02").tr,
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
      _buildStepText(context,
          clappingBothHands: LocalizationExtension("lbl_rest_at_the_toe").tr,
          description: LocalizationExtension("msg_the_basis_of_this").tr)
    ]);
  }


  /// Section Widget
  Widget _buildStartExercising(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomElevatedButton(
              text: LocalizationExtension("msg_start_exercising").tr,
              margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
              onPressed: () {
                detailsController.start(widget.data['id'].toString());
                Get.snackbar('App', 'Started Successfully');
              }),
        ),
        Expanded(
          child: CustomElevatedButton(
              text: LocalizationExtension("Join").tr,
              margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 58.v),
              onPressed: () {
                detailsController.join(widget.data['id'].toString());
                Get.snackbar('App', 'Joined Successfully');
              }),
        ),
      ],
    );
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
