import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/camera_screen/models/camera_model.dart';
part 'camera_event.dart';
part 'camera_state.dart';

/// A bloc that manages the state of a Camera according to the event that is dispatched to it.
class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc(CameraState initialState) : super(initialState) {
    on<CameraInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CameraInitialEvent event,
    Emitter<CameraState> emit,
  ) async {}
}
