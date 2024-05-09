// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [daily_calorie_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class DailyCalorieModel extends Equatable {
  DailyCalorieModel() {}

  DailyCalorieModel copyWith() {
    return DailyCalorieModel();
  }

  @override
  List<Object?> get props => [];
}
