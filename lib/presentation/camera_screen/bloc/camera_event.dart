// ignore_for_file: must_be_immutable

part of 'camera_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Camera widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CameraEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Camera widget is first created.
class CameraInitialEvent extends CameraEvent {
  @override
  List<Object?> get props => [];
}
