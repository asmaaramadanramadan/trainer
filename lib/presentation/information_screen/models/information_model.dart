// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:fty/core/app_export.dart';

/// This class defines the variables used in the [information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InformationModel extends Equatable {
  InformationModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  InformationModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return InformationModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
