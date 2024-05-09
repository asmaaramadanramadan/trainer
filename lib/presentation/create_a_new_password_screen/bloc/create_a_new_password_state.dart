// ignore_for_file: must_be_immutable

part of 'create_a_new_password_bloc.dart';

/// Represents the state of CreateANewPassword in the application.
class CreateANewPasswordState extends Equatable {
  CreateANewPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createANewPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  CreateANewPasswordModel? createANewPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        isShowPassword,
        isShowPassword1,
        createANewPasswordModelObj,
      ];

  CreateANewPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateANewPasswordModel? createANewPasswordModelObj,
  }) {
    return CreateANewPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createANewPasswordModelObj:
          createANewPasswordModelObj ?? this.createANewPasswordModelObj,
    );
  }
}
