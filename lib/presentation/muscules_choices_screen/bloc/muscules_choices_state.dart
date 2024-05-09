// ignore_for_file: must_be_immutable

part of 'muscules_choices_bloc.dart';

/// Represents the state of MusculesChoices in the application.
class MusculesChoicesState extends Equatable {
  MusculesChoicesState({this.musculesChoicesModelObj});

  MusculesChoicesModel? musculesChoicesModelObj;

  @override
  List<Object?> get props => [
        musculesChoicesModelObj,
      ];

  MusculesChoicesState copyWith(
      {MusculesChoicesModel? musculesChoicesModelObj}) {
    return MusculesChoicesState(
      musculesChoicesModelObj:
          musculesChoicesModelObj ?? this.musculesChoicesModelObj,
    );
  }
}
