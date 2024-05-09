// ignore_for_file: must_be_immutable

part of 'my_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyAccount widget is first created.
class MyAccountInitialEvent extends MyAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends MyAccountEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
