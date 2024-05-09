// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:fty/core/app_export.dart';
import '../../../core/app_export.dart';
import 'homeregular_item_model.dart';
import 'frame_item_model.dart';
import 'frame1_item_model.dart';

/// This class defines the variables used in the [home_regular_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeRegularModel extends Equatable {
  HomeRegularModel({
    this.dropdownItemList = const [],
    this.homeregularItemList = const [],
    this.frameItemList = const [],
    this.frame1ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<HomeregularItemModel> homeregularItemList;

  List<FrameItemModel> frameItemList;

  List<Frame1ItemModel> frame1ItemList;

  HomeRegularModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<HomeregularItemModel>? homeregularItemList,
    List<FrameItemModel>? frameItemList,
    List<Frame1ItemModel>? frame1ItemList,
  }) {
    return HomeRegularModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      homeregularItemList: homeregularItemList ?? this.homeregularItemList,
      frameItemList: frameItemList ?? this.frameItemList,
      frame1ItemList: frame1ItemList ?? this.frame1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, homeregularItemList, frameItemList, frame1ItemList];
}
