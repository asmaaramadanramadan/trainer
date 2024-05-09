import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/after_recently_search_page_screen/models/after_recently_search_page_model.dart';
part 'after_recently_search_page_event.dart';
part 'after_recently_search_page_state.dart';

/// A bloc that manages the state of a AfterRecentlySearchPage according to the event that is dispatched to it.
class AfterRecentlySearchPageBloc
    extends Bloc<AfterRecentlySearchPageEvent, AfterRecentlySearchPageState> {
  AfterRecentlySearchPageBloc(AfterRecentlySearchPageState initialState)
      : super(initialState) {
    on<AfterRecentlySearchPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AfterRecentlySearchPageInitialEvent event,
    Emitter<AfterRecentlySearchPageState> emit,
  ) async {
    emit(state.copyWith(
      firrcrosssmallController: TextEditingController(),
      datascienceController: TextEditingController(),
      databaseController: TextEditingController(),
      dataanalysisController: TextEditingController(),
    ));
  }
}
