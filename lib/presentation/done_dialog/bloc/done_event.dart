// ignore_for_file: must_be_immutable

part of 'done_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Done widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Done widget is first created.
class DoneInitialEvent extends DoneEvent {
  @override
  List<Object?> get props => [];
}
