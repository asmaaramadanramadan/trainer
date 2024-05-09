import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/application_type_screen/models/application_type_model.dart';
part 'application_type_event.dart';
part 'application_type_state.dart';

/// A bloc that manages the state of a ApplicationType according to the event that is dispatched to it.
class ApplicationTypeBloc
    extends Bloc<ApplicationTypeEvent, ApplicationTypeState> {
  ApplicationTypeBloc(ApplicationTypeState initialState) : super(initialState) {
    on<ApplicationTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplicationTypeInitialEvent event,
    Emitter<ApplicationTypeState> emit,
  ) async {}
}
