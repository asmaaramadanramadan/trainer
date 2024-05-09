// ignore_for_file: must_be_immutable

part of 'your_height_bloc.dart';

/// Represents the state of YourHeight in the application.
class YourHeightState extends Equatable {
  YourHeightState({this.yourHeightModelObj});

  YourHeightModel? yourHeightModelObj;

  @override
  List<Object?> get props => [
        yourHeightModelObj,
      ];

  YourHeightState copyWith({YourHeightModel? yourHeightModelObj}) {
    return YourHeightState(
      yourHeightModelObj: yourHeightModelObj ?? this.yourHeightModelObj,
    );
  }
}
