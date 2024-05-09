// ignore_for_file: must_be_immutable

part of 'when_end_day_clicked_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhenEndDayClicked widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WhenEndDayClickedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhenEndDayClicked widget is first created.
class WhenEndDayClickedInitialEvent extends WhenEndDayClickedEvent {
  @override
  List<Object?> get props => [];
}
