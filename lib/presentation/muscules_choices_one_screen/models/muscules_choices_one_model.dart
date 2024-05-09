// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:fty/core/app_export.dart';

/// This class defines the variables used in the [muscules_choices_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MusculesChoicesOneModel extends Equatable {
  MusculesChoicesOneModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  MusculesChoicesOneModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return MusculesChoicesOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
