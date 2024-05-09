// ignore_for_file: must_be_immutable

part of 'chat_board_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatBoard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatBoardEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ChatBoard widget is first created.
class ChatBoardInitialEvent extends ChatBoardEvent {
  @override
  List<Object?> get props => [];
}
