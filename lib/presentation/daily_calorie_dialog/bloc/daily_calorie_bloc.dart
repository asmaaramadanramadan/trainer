import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/daily_calorie_dialog/models/daily_calorie_model.dart';
part 'daily_calorie_event.dart';
part 'daily_calorie_state.dart';

/// A bloc that manages the state of a DailyCalorie according to the event that is dispatched to it.
class DailyCalorieBloc extends Bloc<DailyCalorieEvent, DailyCalorieState> {
  DailyCalorieBloc(DailyCalorieState initialState) : super(initialState) {
    on<DailyCalorieInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DailyCalorieInitialEvent event,
    Emitter<DailyCalorieState> emit,
  ) async {}
}
