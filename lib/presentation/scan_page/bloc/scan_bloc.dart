import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/scan_page/models/scan_model.dart';
part 'scan_event.dart';
part 'scan_state.dart';

/// A bloc that manages the state of a Scan according to the event that is dispatched to it.
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc(ScanState initialState) : super(initialState) {
    on<ScanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScanInitialEvent event,
    Emitter<ScanState> emit,
  ) async {}
}
