// ignore_for_file: must_be_immutable

part of 'daily_calorie_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DailyCalorie widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DailyCalorieEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DailyCalorie widget is first created.
class DailyCalorieInitialEvent extends DailyCalorieEvent {
  @override
  List<Object?> get props => [];
}
