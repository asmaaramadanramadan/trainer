// ignore_for_file: must_be_immutable

part of 'reports_bloc.dart';

/// Represents the state of Reports in the application.
class ReportsState extends Equatable {
  ReportsState({
    this.selectedDatesFromCalendar1,
    this.reportsModelObj,
  });

  ReportsModel? reportsModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        reportsModelObj,
      ];

  ReportsState copyWith({
    DateTime? selectedDatesFromCalendar1,
    ReportsModel? reportsModelObj,
  }) {
    return ReportsState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      reportsModelObj: reportsModelObj ?? this.reportsModelObj,
    );
  }
}
