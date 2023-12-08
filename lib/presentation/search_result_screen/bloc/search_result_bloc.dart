import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresult_item_model.dart';
import 'package:zonar_marketing__grapichs/presentation/search_result_screen/models/search_result_model.dart';
part 'search_result_event.dart';
part 'search_result_state.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc(SearchResultState initialState) : super(initialState) {
    on<SearchResultInitialEvent>(_onInitialize);
  }

  List<SearchresultItemModel> fillSearchresultItemList() {
    return List.generate(12, (index) => SearchresultItemModel());
  }

  _onInitialize(
    SearchResultInitialEvent event,
    Emitter<SearchResultState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchResultModelObj: state.searchResultModelObj?.copyWith(
      searchresultItemList: fillSearchresultItemList(),
    )));
  }
}
