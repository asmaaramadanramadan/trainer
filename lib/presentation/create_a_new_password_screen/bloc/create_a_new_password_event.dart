// ignore_for_file: must_be_immutable

part of 'create_a_new_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateANewPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateANewPasswordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CreateANewPassword widget is first created.
class CreateANewPasswordInitialEvent extends CreateANewPasswordEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateANewPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CreateANewPasswordEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
