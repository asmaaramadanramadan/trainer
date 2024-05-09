import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/chat_board_page/models/chat_board_model.dart';
part 'chat_board_event.dart';
part 'chat_board_state.dart';

/// A bloc that manages the state of a ChatBoard according to the event that is dispatched to it.
class ChatBoardBloc extends Bloc<ChatBoardEvent, ChatBoardState> {
  ChatBoardBloc(ChatBoardState initialState) : super(initialState) {
    on<ChatBoardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatBoardInitialEvent event,
    Emitter<ChatBoardState> emit,
  ) async {
    emit(state.copyWith(
      queController: TextEditingController(),
      typingBoxController: TextEditingController(),
    ));
  }
}
