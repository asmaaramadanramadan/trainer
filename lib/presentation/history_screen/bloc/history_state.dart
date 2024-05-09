// ignore_for_file: must_be_immutable

part of 'history_bloc.dart';

/// Represents the state of History in the application.
class HistoryState extends Equatable {
  HistoryState({
    this.selectedDatesFromCalendar1,
    this.historyModelObj,
  });

  HistoryModel? historyModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        historyModelObj,
      ];

  HistoryState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    HistoryModel? historyModelObj,
  }) {
    return HistoryState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      historyModelObj: historyModelObj ?? this.historyModelObj,
    );
  }
}
