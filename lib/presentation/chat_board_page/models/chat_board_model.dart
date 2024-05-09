// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [chat_board_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatBoardModel extends Equatable {
  ChatBoardModel() {}

  ChatBoardModel copyWith() {
    return ChatBoardModel();
  }

  @override
  List<Object?> get props => [];
}
