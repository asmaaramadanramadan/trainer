// ignore_for_file: must_be_immutable

part of 'verification_code_forgot_password_bloc.dart';

/// Represents the state of VerificationCodeForgotPassword in the application.
class VerificationCodeForgotPasswordState extends Equatable {
  VerificationCodeForgotPasswordState({
    this.otpController,
    this.verificationCodeForgotPasswordModelObj,
  });

  TextEditingController? otpController;

  VerificationCodeForgotPasswordModel? verificationCodeForgotPasswordModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationCodeForgotPasswordModelObj,
      ];

  VerificationCodeForgotPasswordState copyWith({
    TextEditingController? otpController,
    VerificationCodeForgotPasswordModel? verificationCodeForgotPasswordModelObj,
  }) {
    return VerificationCodeForgotPasswordState(
      otpController: otpController ?? this.otpController,
      verificationCodeForgotPasswordModelObj:
          verificationCodeForgotPasswordModelObj ??
              this.verificationCodeForgotPasswordModelObj,
    );
  }
}
