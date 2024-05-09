import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/congratulation_of_account_screen/models/congratulation_of_account_model.dart';
part 'congratulation_of_account_event.dart';
part 'congratulation_of_account_state.dart';

/// A bloc that manages the state of a CongratulationOfAccount according to the event that is dispatched to it.
class CongratulationOfAccountBloc
    extends Bloc<CongratulationOfAccountEvent, CongratulationOfAccountState> {
  CongratulationOfAccountBloc(CongratulationOfAccountState initialState)
      : super(initialState) {
    on<CongratulationOfAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CongratulationOfAccountInitialEvent event,
    Emitter<CongratulationOfAccountState> emit,
  ) async {}
}
