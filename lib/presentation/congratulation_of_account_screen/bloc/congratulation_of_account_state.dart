// ignore_for_file: must_be_immutable

part of 'congratulation_of_account_bloc.dart';

/// Represents the state of CongratulationOfAccount in the application.
class CongratulationOfAccountState extends Equatable {
  CongratulationOfAccountState({this.congratulationOfAccountModelObj});

  CongratulationOfAccountModel? congratulationOfAccountModelObj;

  @override
  List<Object?> get props => [
        congratulationOfAccountModelObj,
      ];

  CongratulationOfAccountState copyWith(
      {CongratulationOfAccountModel? congratulationOfAccountModelObj}) {
    return CongratulationOfAccountState(
      congratulationOfAccountModelObj: congratulationOfAccountModelObj ??
          this.congratulationOfAccountModelObj,
    );
  }
}
