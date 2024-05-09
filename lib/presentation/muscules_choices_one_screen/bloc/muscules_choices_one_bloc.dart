import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/muscules_choices_one_screen/models/muscules_choices_one_model.dart';
part 'muscules_choices_one_event.dart';
part 'muscules_choices_one_state.dart';

/// A bloc that manages the state of a MusculesChoicesOne according to the event that is dispatched to it.
class MusculesChoicesOneBloc
    extends Bloc<MusculesChoicesOneEvent, MusculesChoicesOneState> {
  MusculesChoicesOneBloc(MusculesChoicesOneState initialState)
      : super(initialState) {
    on<MusculesChoicesOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<MusculesChoicesOneState> emit,
  ) {
    emit(state.copyWith(injurymuscles: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<MusculesChoicesOneState> emit,
  ) {
    emit(state.copyWith(close: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<MusculesChoicesOneState> emit,
  ) {
    emit(state.copyWith(close1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    MusculesChoicesOneInitialEvent event,
    Emitter<MusculesChoicesOneState> emit,
  ) async {
    emit(state.copyWith(
        bodyInfoCardBgController: TextEditingController(),
        bodyInfoCardBgController1: TextEditingController(),
        bodyInfoCardBgController2: TextEditingController(),
        injurymuscles: false,
        close: false,
        close1: false));
    emit(state.copyWith(
        musculesChoicesOneModelObj: state.musculesChoicesOneModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }
}
