// ignore_for_file: must_be_immutable

part of 'when_end_day_clicked_bloc.dart';

/// Represents the state of WhenEndDayClicked in the application.
class WhenEndDayClickedState extends Equatable {
  WhenEndDayClickedState({this.whenEndDayClickedModelObj});

  WhenEndDayClickedModel? whenEndDayClickedModelObj;

  @override
  List<Object?> get props => [
        whenEndDayClickedModelObj,
      ];

  WhenEndDayClickedState copyWith(
      {WhenEndDayClickedModel? whenEndDayClickedModelObj}) {
    return WhenEndDayClickedState(
      whenEndDayClickedModelObj:
          whenEndDayClickedModelObj ?? this.whenEndDayClickedModelObj,
    );
  }
}
