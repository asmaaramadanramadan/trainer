// ignore_for_file: must_be_immutable

part of 'daily_calorie_bloc.dart';

/// Represents the state of DailyCalorie in the application.
class DailyCalorieState extends Equatable {
  DailyCalorieState({this.dailyCalorieModelObj});

  DailyCalorieModel? dailyCalorieModelObj;

  @override
  List<Object?> get props => [
        dailyCalorieModelObj,
      ];

  DailyCalorieState copyWith({DailyCalorieModel? dailyCalorieModelObj}) {
    return DailyCalorieState(
      dailyCalorieModelObj: dailyCalorieModelObj ?? this.dailyCalorieModelObj,
    );
  }
}
