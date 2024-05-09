// ignore_for_file: must_be_immutable

part of 'application_type_active_bloc.dart';

/// Represents the state of ApplicationTypeActive in the application.
class ApplicationTypeActiveState extends Equatable {
  ApplicationTypeActiveState({this.applicationTypeActiveModelObj});

  ApplicationTypeActiveModel? applicationTypeActiveModelObj;

  @override
  List<Object?> get props => [
        applicationTypeActiveModelObj,
      ];

  ApplicationTypeActiveState copyWith(
      {ApplicationTypeActiveModel? applicationTypeActiveModelObj}) {
    return ApplicationTypeActiveState(
      applicationTypeActiveModelObj:
          applicationTypeActiveModelObj ?? this.applicationTypeActiveModelObj,
    );
  }
}
