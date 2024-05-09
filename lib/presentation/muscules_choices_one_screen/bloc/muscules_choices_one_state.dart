// ignore_for_file: must_be_immutable

part of 'muscules_choices_one_bloc.dart';

/// Represents the state of MusculesChoicesOne in the application.
class MusculesChoicesOneState extends Equatable {
  MusculesChoicesOneState({
    this.bodyInfoCardBgController,
    this.bodyInfoCardBgController1,
    this.bodyInfoCardBgController2,
    this.selectedDropDownValue,
    this.injurymuscles = false,
    this.close = false,
    this.close1 = false,
    this.musculesChoicesOneModelObj,
  });

  TextEditingController? bodyInfoCardBgController;

  TextEditingController? bodyInfoCardBgController1;

  TextEditingController? bodyInfoCardBgController2;

  SelectionPopupModel? selectedDropDownValue;

  MusculesChoicesOneModel? musculesChoicesOneModelObj;

  bool injurymuscles;

  bool close;

  bool close1;

  @override
  List<Object?> get props => [
        bodyInfoCardBgController,
        bodyInfoCardBgController1,
        bodyInfoCardBgController2,
        selectedDropDownValue,
        injurymuscles,
        close,
        close1,
        musculesChoicesOneModelObj,
      ];

  MusculesChoicesOneState copyWith({
    TextEditingController? bodyInfoCardBgController,
    TextEditingController? bodyInfoCardBgController1,
    TextEditingController? bodyInfoCardBgController2,
    SelectionPopupModel? selectedDropDownValue,
    bool? injurymuscles,
    bool? close,
    bool? close1,
    MusculesChoicesOneModel? musculesChoicesOneModelObj,
  }) {
    return MusculesChoicesOneState(
      bodyInfoCardBgController:
          bodyInfoCardBgController ?? this.bodyInfoCardBgController,
      bodyInfoCardBgController1:
          bodyInfoCardBgController1 ?? this.bodyInfoCardBgController1,
      bodyInfoCardBgController2:
          bodyInfoCardBgController2 ?? this.bodyInfoCardBgController2,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      injurymuscles: injurymuscles ?? this.injurymuscles,
      close: close ?? this.close,
      close1: close1 ?? this.close1,
      musculesChoicesOneModelObj:
          musculesChoicesOneModelObj ?? this.musculesChoicesOneModelObj,
    );
  }
}
