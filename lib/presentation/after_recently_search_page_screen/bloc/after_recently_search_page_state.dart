// ignore_for_file: must_be_immutable

part of 'after_recently_search_page_bloc.dart';

/// Represents the state of AfterRecentlySearchPage in the application.
class AfterRecentlySearchPageState extends Equatable {
  AfterRecentlySearchPageState({
    this.firrcrosssmallController,
    this.datascienceController,
    this.databaseController,
    this.dataanalysisController,
    this.afterRecentlySearchPageModelObj,
  });

  TextEditingController? firrcrosssmallController;

  TextEditingController? datascienceController;

  TextEditingController? databaseController;

  TextEditingController? dataanalysisController;

  AfterRecentlySearchPageModel? afterRecentlySearchPageModelObj;

  @override
  List<Object?> get props => [
        firrcrosssmallController,
        datascienceController,
        databaseController,
        dataanalysisController,
        afterRecentlySearchPageModelObj,
      ];

  AfterRecentlySearchPageState copyWith({
    TextEditingController? firrcrosssmallController,
    TextEditingController? datascienceController,
    TextEditingController? databaseController,
    TextEditingController? dataanalysisController,
    AfterRecentlySearchPageModel? afterRecentlySearchPageModelObj,
  }) {
    return AfterRecentlySearchPageState(
      firrcrosssmallController:
          firrcrosssmallController ?? this.firrcrosssmallController,
      datascienceController:
          datascienceController ?? this.datascienceController,
      databaseController: databaseController ?? this.databaseController,
      dataanalysisController:
          dataanalysisController ?? this.dataanalysisController,
      afterRecentlySearchPageModelObj: afterRecentlySearchPageModelObj ??
          this.afterRecentlySearchPageModelObj,
    );
  }
}
