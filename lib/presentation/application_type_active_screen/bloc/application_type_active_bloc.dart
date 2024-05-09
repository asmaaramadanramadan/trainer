import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/application_type_active_screen/models/application_type_active_model.dart';
part 'application_type_active_event.dart';
part 'application_type_active_state.dart';

/// A bloc that manages the state of a ApplicationTypeActive according to the event that is dispatched to it.
class ApplicationTypeActiveBloc
    extends Bloc<ApplicationTypeActiveEvent, ApplicationTypeActiveState> {
  ApplicationTypeActiveBloc(ApplicationTypeActiveState initialState)
      : super(initialState) {
    on<ApplicationTypeActiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplicationTypeActiveInitialEvent event,
    Emitter<ApplicationTypeActiveState> emit,
  ) async {}
}
