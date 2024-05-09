// ignore_for_file: must_be_immutable

part of 'home_regular_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRegular widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeRegularEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeRegular widget is first created.
class HomeRegularInitialEvent extends HomeRegularEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class onSelected extends HomeRegularEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
