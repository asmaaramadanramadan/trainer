import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/create_a_new_password_screen/models/create_a_new_password_model.dart';
part 'create_a_new_password_event.dart';
part 'create_a_new_password_state.dart';

/// A bloc that manages the state of a CreateANewPassword according to the event that is dispatched to it.
class CreateANewPasswordBloc
    extends Bloc<CreateANewPasswordEvent, CreateANewPasswordState> {
  CreateANewPasswordBloc(CreateANewPasswordState initialState)
      : super(initialState) {
    on<CreateANewPasswordInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CreateANewPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CreateANewPasswordState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _onInitialize(
    CreateANewPasswordInitialEvent event,
    Emitter<CreateANewPasswordState> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(),
        newpasswordController1: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true));
  }
}
