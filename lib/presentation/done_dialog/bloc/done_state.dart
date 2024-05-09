// ignore_for_file: must_be_immutable

part of 'done_bloc.dart';

/// Represents the state of Done in the application.
class DoneState extends Equatable {
  DoneState({this.doneModelObj});

  DoneModel? doneModelObj;

  @override
  List<Object?> get props => [
        doneModelObj,
      ];

  DoneState copyWith({DoneModel? doneModelObj}) {
    return DoneState(
      doneModelObj: doneModelObj ?? this.doneModelObj,
    );
  }
}
