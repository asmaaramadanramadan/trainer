// ignore_for_file: must_be_immutable

part of 'my_account_bloc.dart';

/// Represents the state of MyAccount in the application.
class MyAccountState extends Equatable {
  MyAccountState({
    this.isSelectedSwitch = false,
    this.myAccountModelObj,
  });

  MyAccountModel? myAccountModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        myAccountModelObj,
      ];

  MyAccountState copyWith({
    bool? isSelectedSwitch,
    MyAccountModel? myAccountModelObj,
  }) {
    return MyAccountState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      myAccountModelObj: myAccountModelObj ?? this.myAccountModelObj,
    );
  }
}
