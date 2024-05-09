// ignore_for_file: must_be_immutable

part of 'your_height_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourHeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourHeightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the YourHeight widget is first created.
class YourHeightInitialEvent extends YourHeightEvent {
  @override
  List<Object?> get props => [];
}
