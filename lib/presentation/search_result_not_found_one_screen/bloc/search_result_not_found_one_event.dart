// ignore_for_file: must_be_immutable

part of 'search_result_not_found_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultNotFoundOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultNotFoundOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultNotFoundOne widget is first created.
class SearchResultNotFoundOneInitialEvent extends SearchResultNotFoundOneEvent {
  @override
  List<Object?> get props => [];
}
