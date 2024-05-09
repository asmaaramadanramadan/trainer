import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/your_height_screen/models/your_height_model.dart';
part 'your_height_event.dart';
part 'your_height_state.dart';

/// A bloc that manages the state of a YourHeight according to the event that is dispatched to it.
class YourHeightBloc extends Bloc<YourHeightEvent, YourHeightState> {
  YourHeightBloc(YourHeightState initialState) : super(initialState) {
    on<YourHeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourHeightInitialEvent event,
    Emitter<YourHeightState> emit,
  ) async {}
}
