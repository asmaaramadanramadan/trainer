import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/when_end_day_clicked_screen/models/when_end_day_clicked_model.dart';
part 'when_end_day_clicked_event.dart';
part 'when_end_day_clicked_state.dart';

/// A bloc that manages the state of a WhenEndDayClicked according to the event that is dispatched to it.
class WhenEndDayClickedBloc
    extends Bloc<WhenEndDayClickedEvent, WhenEndDayClickedState> {
  WhenEndDayClickedBloc(WhenEndDayClickedState initialState)
      : super(initialState) {
    on<WhenEndDayClickedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WhenEndDayClickedInitialEvent event,
    Emitter<WhenEndDayClickedState> emit,
  ) async {}
}
