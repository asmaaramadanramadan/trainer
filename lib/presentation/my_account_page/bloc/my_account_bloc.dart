import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/my_account_page/models/my_account_model.dart';
part 'my_account_event.dart';
part 'my_account_state.dart';

/// A bloc that manages the state of a MyAccount according to the event that is dispatched to it.
class MyAccountBloc extends Bloc<MyAccountEvent, MyAccountState> {
  MyAccountBloc(MyAccountState initialState) : super(initialState) {
    on<MyAccountInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<MyAccountState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    MyAccountInitialEvent event,
    Emitter<MyAccountState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
