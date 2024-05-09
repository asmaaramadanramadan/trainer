import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/muscules_choices_screen/models/muscules_choices_model.dart';
part 'muscules_choices_event.dart';
part 'muscules_choices_state.dart';

/// A bloc that manages the state of a MusculesChoices according to the event that is dispatched to it.
class MusculesChoicesBloc
    extends Bloc<MusculesChoicesEvent, MusculesChoicesState> {
  MusculesChoicesBloc(MusculesChoicesState initialState) : super(initialState) {
    on<MusculesChoicesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MusculesChoicesInitialEvent event,
    Emitter<MusculesChoicesState> emit,
  ) async {}
}
