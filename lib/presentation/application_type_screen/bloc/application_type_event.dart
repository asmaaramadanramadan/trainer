// ignore_for_file: must_be_immutable

part of 'application_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApplicationType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplicationTypeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ApplicationType widget is first created.
class ApplicationTypeInitialEvent extends ApplicationTypeEvent {
  @override
  List<Object?> get props => [];
}
