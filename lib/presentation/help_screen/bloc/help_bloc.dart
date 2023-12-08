import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/help_screen/models/help_model.dart';part 'help_event.dart';part 'help_state.dart';class HelpBloc extends Bloc<HelpEvent, HelpState> {HelpBloc(HelpState initialState) : super(initialState) { on<HelpInitialEvent>(_onInitialize); }

_onInitialize(HelpInitialEvent event, Emitter<HelpState> emit, ) async  { emit(state.copyWith(groupController: TextEditingController())); } 
 }
