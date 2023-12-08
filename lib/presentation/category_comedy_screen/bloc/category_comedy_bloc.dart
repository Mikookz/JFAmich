import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridrectangle_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/category_comedy_screen/models/category_comedy_model.dart';part 'category_comedy_event.dart';part 'category_comedy_state.dart';class CategoryComedyBloc extends Bloc<CategoryComedyEvent, CategoryComedyState> {CategoryComedyBloc(CategoryComedyState initialState) : super(initialState) { on<CategoryComedyInitialEvent>(_onInitialize); }

_onInitialize(CategoryComedyInitialEvent event, Emitter<CategoryComedyState> emit, ) async  { emit(state.copyWith(categoryComedyModelObj: state.categoryComedyModelObj?.copyWith(gridrectangleItemList: fillGridrectangleItemList()))); } 
List<GridrectangleItemModel> fillGridrectangleItemList() { return List.generate(12, (index) => GridrectangleItemModel()); } 
 }
