// ignore_for_file: must_be_immutable

part of 'scan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Scan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScanEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Scan widget is first created.
class ScanInitialEvent extends ScanEvent {
  @override
  List<Object?> get props => [];
}
