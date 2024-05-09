import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/exercise_screen/models/exercise_model.dart';
part 'exercise_event.dart';
part 'exercise_state.dart';

/// A bloc that manages the state of a Exercise according to the event that is dispatched to it.
class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseBloc(ExerciseState initialState) : super(initialState) {
    on<ExerciseInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExerciseInitialEvent event,
    Emitter<ExerciseState> emit,
  ) async {}
}
