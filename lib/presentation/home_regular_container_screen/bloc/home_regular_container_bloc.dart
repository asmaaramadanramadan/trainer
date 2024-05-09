import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/home_regular_container_screen/models/home_regular_container_model.dart';
part 'home_regular_container_event.dart';
part 'home_regular_container_state.dart';

/// A bloc that manages the state of a HomeRegularContainer according to the event that is dispatched to it.
class HomeRegularContainerBloc
    extends Bloc<HomeRegularContainerEvent, HomeRegularContainerState> {
  HomeRegularContainerBloc(HomeRegularContainerState initialState)
      : super(initialState) {
    on<HomeRegularContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeRegularContainerInitialEvent event,
    Emitter<HomeRegularContainerState> emit,
  ) async {}
}
