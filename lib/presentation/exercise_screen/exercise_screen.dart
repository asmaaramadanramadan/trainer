import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:get/get.dart';

import '../home_post_injury_rehabilitation_screen/controller/home_controller.dart';
import '../home_post_injury_rehabilitation_screen/widgets/frame2_item_widget.dart';

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
                    return Frame2ItemWidget(
                      data['data'][index],
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
