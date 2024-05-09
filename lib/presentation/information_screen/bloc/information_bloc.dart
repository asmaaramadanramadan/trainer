import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/information_screen/models/information_model.dart';
part 'information_event.dart';
part 'information_state.dart';

/// A bloc that manages the state of a Information according to the event that is dispatched to it.
class InformationBloc extends Bloc<InformationEvent, InformationState> {
  InformationBloc(InformationState initialState) : super(initialState) {
    on<InformationInitialEvent>(_onInitialize);
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    InformationInitialEvent event,
    Emitter<InformationState> emit,
  ) async {
    emit(state.copyWith(dateOfBirthController: TextEditingController()));
    emit(state.copyWith(
        informationModelObj: state.informationModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }
}
