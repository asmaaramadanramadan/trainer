// ignore_for_file: must_be_immutable

part of 'muscules_choices_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusculesChoices widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusculesChoicesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MusculesChoices widget is first created.
class MusculesChoicesInitialEvent extends MusculesChoicesEvent {
  @override
  List<Object?> get props => [];
}
