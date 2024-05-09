// ignore_for_file: must_be_immutable

part of 'done_one_bloc.dart';

/// Represents the state of DoneOne in the application.
class DoneOneState extends Equatable {
  DoneOneState({this.doneOneModelObj});

  DoneOneModel? doneOneModelObj;

  @override
  List<Object?> get props => [
        doneOneModelObj,
      ];

  DoneOneState copyWith({DoneOneModel? doneOneModelObj}) {
    return DoneOneState(
      doneOneModelObj: doneOneModelObj ?? this.doneOneModelObj,
    );
  }
}
