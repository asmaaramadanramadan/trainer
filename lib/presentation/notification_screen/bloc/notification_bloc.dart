import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notification_item_model.dart';
import 'package:fty/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj
            ?.copyWith(notificationItemList: fillNotificationItemList())));
  }

  List<NotificationItemModel> fillNotificationItemList() {
    return [
      NotificationItemModel(
          exercisesReminder: "Exercises Reminder",
          title: "There’re still exercises you haven’t done.",
          description: "Go ahead, Its almost over!",
          distance: "30m ago",
          mago: ImageConstant.imgRoadie1),
      NotificationItemModel(
          exercisesReminder: "Water Reminder",
          title: "Hi Hager!",
          description: "Remember to drink water !",
          distance: "30m ago",
          mago: ImageConstant.imgRoadie132x32),
      NotificationItemModel(
          exercisesReminder: "Exercises Reminder",
          title: "There’re still exercises you haven’t done.",
          description: "Go ahead, Its almost over!",
          distance: "30m ago",
          mago: ImageConstant.imgRoadie1),
      NotificationItemModel(
          exercisesReminder: "Water Reminder",
          title: "Hi Hager!",
          description: "Remember to drink water !",
          distance: "30m ago",
          mago: ImageConstant.imgRoadie132x32),
      NotificationItemModel(
          exercisesReminder: "Exercises Reminder",
          title: "There’re still exercises you haven’t done.",
          description: "Go ahead, Its almost over!",
          distance: "30m ago",
          mago: ImageConstant.imgRoadie1)
    ];
  }
}
