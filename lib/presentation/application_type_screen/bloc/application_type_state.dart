// ignore_for_file: must_be_immutable

part of 'application_type_bloc.dart';

/// Represents the state of ApplicationType in the application.
class ApplicationTypeState extends Equatable {
  ApplicationTypeState({this.applicationTypeModelObj});

  ApplicationTypeModel? applicationTypeModelObj;

  @override
  List<Object?> get props => [
        applicationTypeModelObj,
      ];

  ApplicationTypeState copyWith(
      {ApplicationTypeModel? applicationTypeModelObj}) {
    return ApplicationTypeState(
      applicationTypeModelObj:
          applicationTypeModelObj ?? this.applicationTypeModelObj,
    );
  }
}
