import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/similiar_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/similiar_page/models/similiar_model.dart';part 'similiar_event.dart';part 'similiar_state.dart';class SimiliarBloc extends Bloc<SimiliarEvent, SimiliarState> {SimiliarBloc(SimiliarState initialState) : super(initialState) { on<SimiliarInitialEvent>(_onInitialize); }

_onInitialize(SimiliarInitialEvent event, Emitter<SimiliarState> emit, ) async  { emit(state.copyWith(similiarModelObj: state.similiarModelObj?.copyWith(similiarItemList: fillSimiliarItemList()))); } 
List<SimiliarItemModel> fillSimiliarItemList() { return List.generate(3, (index) => SimiliarItemModel()); } 
 }
