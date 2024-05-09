// ignore_for_file: must_be_immutable

part of 'home_post_injury_rehabilitation_bloc.dart';

/// Represents the state of HomePostInjuryRehabilitation in the application.
class HomePostInjuryRehabilitationState extends Equatable {
  HomePostInjuryRehabilitationState({
    this.searchController,
    this.homePostInjuryRehabilitationModelObj,
  });

  TextEditingController? searchController;

  HomePostInjuryRehabilitationModel? homePostInjuryRehabilitationModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homePostInjuryRehabilitationModelObj,
      ];

  HomePostInjuryRehabilitationState copyWith({
    TextEditingController? searchController,
    HomePostInjuryRehabilitationModel? homePostInjuryRehabilitationModelObj,
  }) {
    return HomePostInjuryRehabilitationState(
      searchController: searchController ?? this.searchController,
      homePostInjuryRehabilitationModelObj:
          homePostInjuryRehabilitationModelObj ??
              this.homePostInjuryRehabilitationModelObj,
    );
  }
}
