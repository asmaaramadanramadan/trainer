// ignore_for_file: must_be_immutable

part of 'home_regular_bloc.dart';

/// Represents the state of HomeRegular in the application.
class HomeRegularState extends Equatable {
  HomeRegularState({
    this.searchController,
    this.selectedDropDownValue,
    this.homeRegularModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  HomeRegularModel? homeRegularModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        homeRegularModelObj,
      ];

  HomeRegularState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    HomeRegularModel? homeRegularModelObj,
  }) {
    return HomeRegularState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      homeRegularModelObj: homeRegularModelObj ?? this.homeRegularModelObj,
    );
  }
}
