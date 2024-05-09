// ignore_for_file: must_be_immutable

part of 'setting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Setting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Setting widget is first created.
class SettingInitialEvent extends SettingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SettingEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
