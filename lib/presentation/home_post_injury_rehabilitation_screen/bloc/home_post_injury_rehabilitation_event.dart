// ignore_for_file: must_be_immutable

part of 'home_post_injury_rehabilitation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePostInjuryRehabilitation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePostInjuryRehabilitationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePostInjuryRehabilitation widget is first created.
class HomePostInjuryRehabilitationInitialEvent
    extends HomePostInjuryRehabilitationEvent {
  @override
  List<Object?> get props => [];
}
