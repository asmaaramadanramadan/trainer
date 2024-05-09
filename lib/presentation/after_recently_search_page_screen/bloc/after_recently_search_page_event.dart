// ignore_for_file: must_be_immutable

part of 'after_recently_search_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AfterRecentlySearchPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AfterRecentlySearchPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AfterRecentlySearchPage widget is first created.
class AfterRecentlySearchPageInitialEvent extends AfterRecentlySearchPageEvent {
  @override
  List<Object?> get props => [];
}
