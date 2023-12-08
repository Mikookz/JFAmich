import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/search_help_screen/models/search_help_model.dart';part 'search_help_event.dart';part 'search_help_state.dart';class SearchHelpBloc extends Bloc<SearchHelpEvent, SearchHelpState> {SearchHelpBloc(SearchHelpState initialState) : super(initialState) { on<SearchHelpInitialEvent>(_onInitialize); }

_onInitialize(SearchHelpInitialEvent event, Emitter<SearchHelpState> emit, ) async  { emit(state.copyWith(groupController: TextEditingController())); } 
 }
