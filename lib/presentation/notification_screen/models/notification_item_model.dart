import '../../../core/app_export.dart';

/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {
  NotificationItemModel({
    this.exercisesReminder,
    this.title,
    this.description,
    this.distance,
    this.mago,
    this.id,
  }) {
    exercisesReminder = exercisesReminder ?? "Exercises Reminder";
    title = title ?? "There’re still exercises you haven’t done.";
    description = description ?? "Go ahead, Its almost over!";
    distance = distance ?? "30m ago";
    mago = mago ?? ImageConstant.imgRoadie1;
    id = id ?? "";
  }

  String? exercisesReminder;

  String? title;

  String? description;

  String? distance;

  String? mago;

  String? id;
}
