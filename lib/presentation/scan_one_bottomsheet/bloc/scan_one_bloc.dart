import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/scan_one_bottomsheet/models/scan_one_model.dart';
part 'scan_one_event.dart';
part 'scan_one_state.dart';

/// A bloc that manages the state of a ScanOne according to the event that is dispatched to it.
class ScanOneBloc extends Bloc<ScanOneEvent, ScanOneState> {
  ScanOneBloc(ScanOneState initialState) : super(initialState) {
    on<ScanOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScanOneInitialEvent event,
    Emitter<ScanOneState> emit,
  ) async {}
}
