import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fty/presentation/search_result_not_found_one_screen/models/search_result_not_found_one_model.dart';
part 'search_result_not_found_one_event.dart';
part 'search_result_not_found_one_state.dart';

/// A bloc that manages the state of a SearchResultNotFoundOne according to the event that is dispatched to it.
class SearchResultNotFoundOneBloc
    extends Bloc<SearchResultNotFoundOneEvent, SearchResultNotFoundOneState> {
  SearchResultNotFoundOneBloc(SearchResultNotFoundOneState initialState)
      : super(initialState) {
    on<SearchResultNotFoundOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultNotFoundOneInitialEvent event,
    Emitter<SearchResultNotFoundOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
