// ignore_for_file: must_be_immutable

part of 'reports_edit_height_bloc.dart';

/// Represents the state of ReportsEditHeight in the application.
class ReportsEditHeightState extends Equatable {
  ReportsEditHeightState({
    this.fTCounterController,
    this.lBCounterController,
    this.reportsEditHeightModelObj,
  });

  TextEditingController? fTCounterController;

  TextEditingController? lBCounterController;

  ReportsEditHeightModel? reportsEditHeightModelObj;

  @override
  List<Object?> get props => [
        fTCounterController,
        lBCounterController,
        reportsEditHeightModelObj,
      ];

  ReportsEditHeightState copyWith({
    TextEditingController? fTCounterController,
    TextEditingController? lBCounterController,
    ReportsEditHeightModel? reportsEditHeightModelObj,
  }) {
    return ReportsEditHeightState(
      fTCounterController: fTCounterController ?? this.fTCounterController,
      lBCounterController: lBCounterController ?? this.lBCounterController,
      reportsEditHeightModelObj:
          reportsEditHeightModelObj ?? this.reportsEditHeightModelObj,
    );
  }
}
