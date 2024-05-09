// ignore_for_file: must_be_immutable

part of 'search_result_not_found_one_bloc.dart';

/// Represents the state of SearchResultNotFoundOne in the application.
class SearchResultNotFoundOneState extends Equatable {
  SearchResultNotFoundOneState({
    this.searchController,
    this.searchResultNotFoundOneModelObj,
  });

  TextEditingController? searchController;

  SearchResultNotFoundOneModel? searchResultNotFoundOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchResultNotFoundOneModelObj,
      ];

  SearchResultNotFoundOneState copyWith({
    TextEditingController? searchController,
    SearchResultNotFoundOneModel? searchResultNotFoundOneModelObj,
  }) {
    return SearchResultNotFoundOneState(
      searchController: searchController ?? this.searchController,
      searchResultNotFoundOneModelObj: searchResultNotFoundOneModelObj ??
          this.searchResultNotFoundOneModelObj,
    );
  }
}
