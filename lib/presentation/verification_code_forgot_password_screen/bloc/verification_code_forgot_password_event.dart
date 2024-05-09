// ignore_for_file: must_be_immutable

part of 'verification_code_forgot_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationCodeForgotPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationCodeForgotPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VerificationCodeForgotPassword widget is first created.
class VerificationCodeForgotPasswordInitialEvent
    extends VerificationCodeForgotPasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeForgotPasswordEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
