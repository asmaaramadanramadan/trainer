// ignore_for_file: must_be_immutable

part of 'home_regular_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRegularContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeRegularContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeRegularContainer widget is first created.
class HomeRegularContainerInitialEvent extends HomeRegularContainerEvent {
  @override
  List<Object?> get props => [];
}
