// ignore_for_file: must_be_immutable

part of 'exercise_bloc.dart';

/// Represents the state of Exercise in the application.
class ExerciseState extends Equatable {
  ExerciseState({this.exerciseModelObj});

  ExerciseModel? exerciseModelObj;

  @override
  List<Object?> get props => [
        exerciseModelObj,
      ];

  ExerciseState copyWith({ExerciseModel? exerciseModelObj}) {
    return ExerciseState(
      exerciseModelObj: exerciseModelObj ?? this.exerciseModelObj,
    );
  }
}
