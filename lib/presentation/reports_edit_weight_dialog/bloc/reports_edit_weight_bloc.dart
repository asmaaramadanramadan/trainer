import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/reports_edit_weight_dialog/models/reports_edit_weight_model.dart';
part 'reports_edit_weight_event.dart';
part 'reports_edit_weight_state.dart';

/// A bloc that manages the state of a ReportsEditWeight according to the event that is dispatched to it.
class ReportsEditWeightBloc
    extends Bloc<ReportsEditWeightEvent, ReportsEditWeightState> {
  ReportsEditWeightBloc(ReportsEditWeightState initialState)
      : super(initialState) {
    on<ReportsEditWeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportsEditWeightInitialEvent event,
    Emitter<ReportsEditWeightState> emit,
  ) async {
    emit(state.copyWith(
      lBCounterController: TextEditingController(),
    ));
  }
}
