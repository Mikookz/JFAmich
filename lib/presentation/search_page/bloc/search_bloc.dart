import '../models/chipviewmarvel_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewmarvel_item_model.dart';
import '../models/listrectangle2_item_model.dart';
import '../models/list_item_model.dart';
import 'package:zonar_marketing__grapichs/presentation/search_page/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchState> emit,
  ) {
    List<ChipviewmarvelItemModel> newList = List<ChipviewmarvelItemModel>.from(
        state.searchModelObj!.chipviewmarvelItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(chipviewmarvelItemList: newList)));
  }

  List<ChipviewmarvelItemModel> fillChipviewmarvelItemList() {
    return List.generate(4, (index) => ChipviewmarvelItemModel());
  }

  List<Listrectangle2ItemModel> fillListrectangle2ItemList() {
    return List.generate(4, (index) => Listrectangle2ItemModel());
  }

  List<ListItemModel> fillListItemList() {
    return List.generate(4, (index) => ListItemModel());
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      chipviewmarvelItemList: fillChipviewmarvelItemList(),
      listrectangle2ItemList: fillListrectangle2ItemList(),
      listItemList: fillListItemList(),
    )));
  }
}
