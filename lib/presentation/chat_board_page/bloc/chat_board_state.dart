// ignore_for_file: must_be_immutable

part of 'chat_board_bloc.dart';

/// Represents the state of ChatBoard in the application.
class ChatBoardState extends Equatable {
  ChatBoardState({
    this.queController,
    this.typingBoxController,
    this.chatBoardModelObj,
  });

  TextEditingController? queController;

  TextEditingController? typingBoxController;

  ChatBoardModel? chatBoardModelObj;

  @override
  List<Object?> get props => [
        queController,
        typingBoxController,
        chatBoardModelObj,
      ];

  ChatBoardState copyWith({
    TextEditingController? queController,
    TextEditingController? typingBoxController,
    ChatBoardModel? chatBoardModelObj,
  }) {
    return ChatBoardState(
      queController: queController ?? this.queController,
      typingBoxController: typingBoxController ?? this.typingBoxController,
      chatBoardModelObj: chatBoardModelObj ?? this.chatBoardModelObj,
    );
  }
}
