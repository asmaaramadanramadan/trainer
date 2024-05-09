// ignore_for_file: must_be_immutable

part of 'reports_edit_height_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportsEditHeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportsEditHeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReportsEditHeight widget is first created.
class ReportsEditHeightInitialEvent extends ReportsEditHeightEvent {
  @override
  List<Object?> get props => [];
}
