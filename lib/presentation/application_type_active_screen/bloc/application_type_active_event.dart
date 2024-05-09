// ignore_for_file: must_be_immutable

part of 'application_type_active_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApplicationTypeActive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplicationTypeActiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ApplicationTypeActive widget is first created.
class ApplicationTypeActiveInitialEvent extends ApplicationTypeActiveEvent {
  @override
  List<Object?> get props => [];
}
