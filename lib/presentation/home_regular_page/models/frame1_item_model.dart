import '../../../core/app_export.dart';

/// This class is used in the [frame1_item_widget] screen.
class Frame1ItemModel {
  Frame1ItemModel({
    this.plankChallenge,
    this.plankChallenge1,
    this.id,
  }) {
    plankChallenge = plankChallenge ?? ImageConstant.imgLayer1WhiteA700;
    plankChallenge1 = plankChallenge1 ?? "Plank\nChallenge";
    id = id ?? "";
  }

  String? plankChallenge;

  String? plankChallenge1;

  String? id;
}
