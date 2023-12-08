import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderrectangleten_item_model.dart';
import '../models/listrectanglesix_item_model.dart';
import '../models/listall1_item_model.dart';
import '../models/listrectangle1_item_model.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';
import 'package:zonar_marketing__grapichs/presentation/home_recently_watched_screen/models/home_recently_watched_model.dart';
part 'home_recently_watched_event.dart';
part 'home_recently_watched_state.dart';

class HomeRecentlyWatchedBloc
    extends Bloc<HomeRecentlyWatchedEvent, HomeRecentlyWatchedState> {
  HomeRecentlyWatchedBloc(HomeRecentlyWatchedState initialState)
      : super(initialState) {
    on<HomeRecentlyWatchedInitialEvent>(_onInitialize);
  }

  List<SliderrectangletenItemModel> fillSliderrectangletenItemList() {
    return List.generate(3, (index) => SliderrectangletenItemModel());
  }

  List<ListrectanglesixItemModel> fillListrectanglesixItemList() {
    return List.generate(2, (index) => ListrectanglesixItemModel());
  }

  List<Listall1ItemModel> fillListall1ItemList() {
    return List.generate(5, (index) => Listall1ItemModel());
  }

  List<Listrectangle1ItemModel> fillListrectangle1ItemList() {
    return List.generate(3, (index) => Listrectangle1ItemModel());
  }

  _onInitialize(
    HomeRecentlyWatchedInitialEvent event,
    Emitter<HomeRecentlyWatchedState> emit,
  ) async {
    emit(state.copyWith(
      silderIndex: 0,
    ));
    emit(state.copyWith(
        homeRecentlyWatchedModelObj:
            state.homeRecentlyWatchedModelObj?.copyWith(
      sliderrectangletenItemList: fillSliderrectangletenItemList(),
      listrectanglesixItemList: fillListrectanglesixItemList(),
      listall1ItemList: fillListall1ItemList(),
      listrectangle1ItemList: fillListrectangle1ItemList(),
    )));
  }
}
