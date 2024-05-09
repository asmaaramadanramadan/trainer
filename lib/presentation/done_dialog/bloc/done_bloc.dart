import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/done_dialog/models/done_model.dart';
part 'done_event.dart';
part 'done_state.dart';

/// A bloc that manages the state of a Done according to the event that is dispatched to it.
class DoneBloc extends Bloc<DoneEvent, DoneState> {
  DoneBloc(DoneState initialState) : super(initialState) {
    on<DoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DoneInitialEvent event,
    Emitter<DoneState> emit,
  ) async {}
}
