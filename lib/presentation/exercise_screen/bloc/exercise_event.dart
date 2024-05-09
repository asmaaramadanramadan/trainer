// ignore_for_file: must_be_immutable

part of 'exercise_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Exercise widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExerciseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Exercise widget is first created.
class ExerciseInitialEvent extends ExerciseEvent {
  @override
  List<Object?> get props => [];
}
