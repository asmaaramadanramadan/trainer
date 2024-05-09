// ignore_for_file: must_be_immutable

part of 'setting_bloc.dart';

/// Represents the state of Setting in the application.
class SettingState extends Equatable {
  SettingState({
    this.isSelectedSwitch = false,
    this.settingModelObj,
  });

  SettingModel? settingModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        settingModelObj,
      ];

  SettingState copyWith({
    bool? isSelectedSwitch,
    SettingModel? settingModelObj,
  }) {
    return SettingState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      settingModelObj: settingModelObj ?? this.settingModelObj,
    );
  }
}
