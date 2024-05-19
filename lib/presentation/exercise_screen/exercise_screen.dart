import 'package:fty/widgets/app_bar/custom_app_bar.dart';
import 'package:fty/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:fty/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';
import '../home_post_injury_rehabilitation_screen/controller/home_controller.dart';
import '../home_post_injury_rehabilitation_screen/models/frame2_item_model.dart';
import '../home_post_injury_rehabilitation_screen/widgets/frame2_item_widget.dart';
import 'models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'bloc/exercise_bloc.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({Key? key})
      : super(
          key: key,
        );
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: AppBar(
          title: Text('All Plan'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: FutureBuilder(
            future: homeController.getPopular(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Map data = snapshot.data as Map;
                return ListView.separated(
                  padding: EdgeInsets.all(12),
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 20.h,
                      height: 20,
                    );
                  },
                  itemCount: data['data'].length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){

                      },
                      child: Frame2ItemWidget(
                        data['data'][index],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
