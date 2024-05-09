// ignore_for_file: must_be_immutable

part of 'reports_edit_weight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportsEditWeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportsEditWeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReportsEditWeight widget is first created.
class ReportsEditWeightInitialEvent extends ReportsEditWeightEvent {
  @override
  List<Object?> get props => [];
}
