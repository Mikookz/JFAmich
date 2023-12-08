import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/selectsaved_item_model.dart';import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';import 'package:zonar_marketing__grapichs/presentation/select_saved_screen/models/select_saved_model.dart';part 'select_saved_event.dart';part 'select_saved_state.dart';class SelectSavedBloc extends Bloc<SelectSavedEvent, SelectSavedState> {SelectSavedBloc(SelectSavedState initialState) : super(initialState) { on<SelectSavedInitialEvent>(_onInitialize); }

_onInitialize(SelectSavedInitialEvent event, Emitter<SelectSavedState> emit, ) async  { emit(state.copyWith(selectSavedModelObj: state.selectSavedModelObj?.copyWith(selectsavedItemList: fillSelectsavedItemList()))); } 
List<SelectsavedItemModel> fillSelectsavedItemList() { return List.generate(4, (index) => SelectsavedItemModel()); } 
 }
