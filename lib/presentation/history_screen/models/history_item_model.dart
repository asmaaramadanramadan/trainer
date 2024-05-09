import '../../../core/app_export.dart';

/// This class is used in the [history_item_widget] screen.
class HistoryItemModel {
  HistoryItemModel({
    this.image,
    this.kcal,
    this.kcalCounter,
    this.time,
    this.id,
  }) {
    image = image ?? ImageConstant.imgLayer1Primary;
    kcal = kcal ?? ImageConstant.imgFireOnerrorcontainer;
    kcalCounter = kcalCounter ?? "0.6 kcal";
    time = time ?? "00:35";
    id = id ?? "";
  }

  String? image;

  String? kcal;

  String? kcalCounter;

  String? time;

  String? id;
}
