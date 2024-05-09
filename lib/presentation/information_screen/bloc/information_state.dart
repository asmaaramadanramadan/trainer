// ignore_for_file: must_be_immutable

part of 'information_bloc.dart';

/// Represents the state of Information in the application.
class InformationState extends Equatable {
  InformationState({
    this.dateOfBirthController,
    this.selectedDropDownValue,
    this.informationModelObj,
  });

  TextEditingController? dateOfBirthController;

  SelectionPopupModel? selectedDropDownValue;

  InformationModel? informationModelObj;

  @override
  List<Object?> get props => [
        dateOfBirthController,
        selectedDropDownValue,
        informationModelObj,
      ];

  InformationState copyWith({
    TextEditingController? dateOfBirthController,
    SelectionPopupModel? selectedDropDownValue,
    InformationModel? informationModelObj,
  }) {
    return InformationState(
      dateOfBirthController:
          dateOfBirthController ?? this.dateOfBirthController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      informationModelObj: informationModelObj ?? this.informationModelObj,
    );
  }
}
