import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/history_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/history_screen/models/history_model.dart';part 'history_event.dart';part 'history_state.dart';class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {HistoryBloc(HistoryState initialState) : super(initialState) { on<HistoryInitialEvent>(_onInitialize); }

_onInitialize(HistoryInitialEvent event, Emitter<HistoryState> emit, ) async  { emit(state.copyWith(historyModelObj: state.historyModelObj?.copyWith(historyItemList: fillHistoryItemList()))); } 
List<HistoryItemModel> fillHistoryItemList() { return List.generate(4, (index) => HistoryItemModel()); } 
 }
