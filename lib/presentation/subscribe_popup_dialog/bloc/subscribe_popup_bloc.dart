import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/subscribe_popup_dialog/models/subscribe_popup_model.dart';part 'subscribe_popup_event.dart';part 'subscribe_popup_state.dart';class SubscribePopupBloc extends Bloc<SubscribePopupEvent, SubscribePopupState> {SubscribePopupBloc(SubscribePopupState initialState) : super(initialState) { on<SubscribePopupInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeCheckBox1Event>(_changeCheckBox1); on<ChangeCheckBox2Event>(_changeCheckBox2); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SubscribePopupState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_changeCheckBox1(ChangeCheckBox1Event event, Emitter<SubscribePopupState> emit, ) { emit(state.copyWith(isCheckbox1: event.value)); } 
_changeCheckBox2(ChangeCheckBox2Event event, Emitter<SubscribePopupState> emit, ) { emit(state.copyWith(isCheckbox2: event.value)); } 
_onInitialize(SubscribePopupInitialEvent event, Emitter<SubscribePopupState> emit, ) async  { emit(state.copyWith(isCheckbox: false, isCheckbox1: false, isCheckbox2: false)); } 
 }
