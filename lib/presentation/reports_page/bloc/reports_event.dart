// ignore_for_file: must_be_immutable

part of 'reports_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Reports widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Reports widget is first created.
class ReportsInitialEvent extends ReportsEvent {
  @override
  List<Object?> get props => [];
}
