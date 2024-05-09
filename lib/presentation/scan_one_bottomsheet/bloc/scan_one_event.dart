// ignore_for_file: must_be_immutable

part of 'scan_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ScanOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScanOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ScanOne widget is first created.
class ScanOneInitialEvent extends ScanOneEvent {
  @override
  List<Object?> get props => [];
}
