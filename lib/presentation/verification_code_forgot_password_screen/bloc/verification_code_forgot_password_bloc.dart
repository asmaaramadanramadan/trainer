import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/verification_code_forgot_password_screen/models/verification_code_forgot_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_code_forgot_password_event.dart';
part 'verification_code_forgot_password_state.dart';

/// A bloc that manages the state of a VerificationCodeForgotPassword according to the event that is dispatched to it.
class VerificationCodeForgotPasswordBloc extends Bloc<
    VerificationCodeForgotPasswordEvent,
    VerificationCodeForgotPasswordState> with CodeAutoFill {
  VerificationCodeForgotPasswordBloc(
      VerificationCodeForgotPasswordState initialState)
      : super(initialState) {
    on<VerificationCodeForgotPasswordInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationCodeForgotPasswordState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    VerificationCodeForgotPasswordInitialEvent event,
    Emitter<VerificationCodeForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
