import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/reports_edit_height_dialog/models/reports_edit_height_model.dart';
part 'reports_edit_height_event.dart';
part 'reports_edit_height_state.dart';

/// A bloc that manages the state of a ReportsEditHeight according to the event that is dispatched to it.
class ReportsEditHeightBloc
    extends Bloc<ReportsEditHeightEvent, ReportsEditHeightState> {
  ReportsEditHeightBloc(ReportsEditHeightState initialState)
      : super(initialState) {
    on<ReportsEditHeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportsEditHeightInitialEvent event,
    Emitter<ReportsEditHeightState> emit,
  ) async {
    emit(state.copyWith(
      fTCounterController: TextEditingController(),
      lBCounterController: TextEditingController(),
    ));
  }
}
