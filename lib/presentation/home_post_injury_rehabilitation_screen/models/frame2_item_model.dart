import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.lowerBodyTraining,
    this.lowerBodyTraining1,
    this.kcalCounter,
    this.time,
    this.id,
  }) {
    lowerBodyTraining = lowerBodyTraining ?? ImageConstant.imgImage195;
    lowerBodyTraining1 = lowerBodyTraining1 ?? "Lower Body\nTraining";
    kcalCounter = kcalCounter ?? "0.6 kcal";
    time = time ?? "00:35";
    id = id ?? "";
  }

  String? lowerBodyTraining;

  String? lowerBodyTraining1;

  String? kcalCounter;

  String? time;

  String? id;
}
