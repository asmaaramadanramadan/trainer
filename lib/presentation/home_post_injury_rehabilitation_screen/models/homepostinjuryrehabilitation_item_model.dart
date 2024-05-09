import '../../../core/app_export.dart';

/// This class is used in the [homepostinjuryrehabilitation_item_widget] screen.
class HomepostinjuryrehabilitationItemModel {
  HomepostinjuryrehabilitationItemModel({
    this.bellyfatburner,
    this.bellyFatBurner1,
    this.time,
    this.beginner,
    this.id,
  }) {
    bellyfatburner = bellyfatburner ?? ImageConstant.imgImage190;
    bellyFatBurner1 = bellyFatBurner1 ?? "Belly fat burner";
    time = time ?? "10 min";
    beginner = beginner ?? "Beginner";
    id = id ?? "";
  }

  String? bellyfatburner;

  String? bellyFatBurner1;

  String? time;

  String? beginner;

  String? id;
}
