// ignore_for_file: must_be_immutable

part of 'congratulation_of_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CongratulationOfAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CongratulationOfAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CongratulationOfAccount widget is first created.
class CongratulationOfAccountInitialEvent extends CongratulationOfAccountEvent {
  @override
  List<Object?> get props => [];
}
