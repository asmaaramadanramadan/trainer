// ignore_for_file: must_be_immutable

part of 'reports_edit_weight_bloc.dart';

/// Represents the state of ReportsEditWeight in the application.
class ReportsEditWeightState extends Equatable {
  ReportsEditWeightState({
    this.lBCounterController,
    this.reportsEditWeightModelObj,
  });

  TextEditingController? lBCounterController;

  ReportsEditWeightModel? reportsEditWeightModelObj;

  @override
  List<Object?> get props => [
        lBCounterController,
        reportsEditWeightModelObj,
      ];

  ReportsEditWeightState copyWith({
    TextEditingController? lBCounterController,
    ReportsEditWeightModel? reportsEditWeightModelObj,
  }) {
    return ReportsEditWeightState(
      lBCounterController: lBCounterController ?? this.lBCounterController,
      reportsEditWeightModelObj:
          reportsEditWeightModelObj ?? this.reportsEditWeightModelObj,
    );
  }
}
