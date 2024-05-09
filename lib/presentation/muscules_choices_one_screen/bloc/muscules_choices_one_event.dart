// ignore_for_file: must_be_immutable

part of 'muscules_choices_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MusculesChoicesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MusculesChoicesOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MusculesChoicesOne widget is first created.
class MusculesChoicesOneInitialEvent extends MusculesChoicesOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends MusculesChoicesOneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends MusculesChoicesOneEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends MusculesChoicesOneEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
