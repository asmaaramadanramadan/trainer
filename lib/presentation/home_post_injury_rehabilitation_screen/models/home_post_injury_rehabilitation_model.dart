// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'homepostinjuryrehabilitation_item_model.dart';
import 'frame2_item_model.dart';
import 'frame3_item_model.dart';

/// This class defines the variables used in the [home_post_injury_rehabilitation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePostInjuryRehabilitationModel extends Equatable {
  HomePostInjuryRehabilitationModel({
    this.homepostinjuryrehabilitationItemList = const [],
    this.frame2ItemList = const [],
    this.frame3ItemList = const [],
  }) {}

  List<HomepostinjuryrehabilitationItemModel>
      homepostinjuryrehabilitationItemList;

  List<Frame2ItemModel> frame2ItemList;

  List<Frame3ItemModel> frame3ItemList;

  HomePostInjuryRehabilitationModel copyWith({
    List<HomepostinjuryrehabilitationItemModel>?
        homepostinjuryrehabilitationItemList,
    List<Frame2ItemModel>? frame2ItemList,
    List<Frame3ItemModel>? frame3ItemList,
  }) {
    return HomePostInjuryRehabilitationModel(
      homepostinjuryrehabilitationItemList:
          homepostinjuryrehabilitationItemList ??
              this.homepostinjuryrehabilitationItemList,
      frame2ItemList: frame2ItemList ?? this.frame2ItemList,
      frame3ItemList: frame3ItemList ?? this.frame3ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [homepostinjuryrehabilitationItemList, frame2ItemList, frame3ItemList];
}
