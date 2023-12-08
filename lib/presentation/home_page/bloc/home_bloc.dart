import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/slidergroup427319005_item_model.dart';import '../models/listall_item_model.dart';import '../models/listrectangle_item_model.dart';import '../models/listrectanglefive_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/home_page/models/home_model.dart';part 'home_event.dart';part 'home_state.dart';class HomeBloc extends Bloc<HomeEvent, HomeState> {HomeBloc(HomeState initialState) : super(initialState) { on<HomeInitialEvent>(_onInitialize); }

List<Slidergroup427319005ItemModel> fillSlidergroup427319005ItemList() { return List.generate(4, (index) => Slidergroup427319005ItemModel()); } 
List<ListallItemModel> fillListallItemList() { return List.generate(5, (index) => ListallItemModel()); } 
List<ListrectangleItemModel> fillListrectangleItemList() { return List.generate(3, (index) => ListrectangleItemModel()); } 
List<ListrectanglefiveItemModel> fillListrectanglefiveItemList() { return List.generate(3, (index) => ListrectanglefiveItemModel()); } 
_onInitialize(HomeInitialEvent event, Emitter<HomeState> emit, ) async  { emit(state.copyWith(silderIndex: 0)); emit(state.copyWith(homeModelObj: state.homeModelObj?.copyWith(slidergroup427319005ItemList: fillSlidergroup427319005ItemList(), listallItemList: fillListallItemList(), listrectangleItemList: fillListrectangleItemList(), listrectanglefiveItemList: fillListrectanglefiveItemList()))); } 
 }
