import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/done_one_dialog/models/done_one_model.dart';
part 'done_one_event.dart';
part 'done_one_state.dart';

/// A bloc that manages the state of a DoneOne according to the event that is dispatched to it.
class DoneOneBloc extends Bloc<DoneOneEvent, DoneOneState> {
  DoneOneBloc(DoneOneState initialState) : super(initialState) {
    on<DoneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DoneOneInitialEvent event,
    Emitter<DoneOneState> emit,
  ) async {}
}
