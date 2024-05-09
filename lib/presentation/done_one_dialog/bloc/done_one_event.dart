// ignore_for_file: must_be_immutable

part of 'done_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DoneOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DoneOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DoneOne widget is first created.
class DoneOneInitialEvent extends DoneOneEvent {
  @override
  List<Object?> get props => [];
}
