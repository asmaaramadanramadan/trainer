import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/history_item_model.dart';
import 'package:fty/presentation/history_screen/models/history_model.dart';
part 'history_event.dart';
part 'history_state.dart';

/// A bloc that manages the state of a History according to the event that is dispatched to it.
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
        historyModelObj: state.historyModelObj?.copyWith(
      historyItemList: fillHistoryItemList(),
    )));
  }

  List<HistoryItemModel> fillHistoryItemList() {
    return [
      HistoryItemModel(
          image: ImageConstant.imgLayer1Primary,
          kcal: ImageConstant.imgFireOnerrorcontainer,
          kcalCounter: "0.6 kcal",
          time: "00:35"),
      HistoryItemModel(
          image: ImageConstant.imgLayer1Primary,
          kcal: ImageConstant.imgFireOnerrorcontainer,
          kcalCounter: "0.6 kcal",
          time: "00:35"),
      HistoryItemModel(
          image: ImageConstant.imgLayer1Primary45x40,
          kcal: ImageConstant.imgFireOnerrorcontainer,
          kcalCounter: "0.6 kcal",
          time: "00:35"),
      HistoryItemModel(
          kcal: ImageConstant.imgFrame34194Onerrorcontainer,
          kcalCounter: "0.6 kcal",
          time: "00:35")
    ];
  }
}
