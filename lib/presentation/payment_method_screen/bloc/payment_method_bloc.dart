import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/payment_method_screen/models/payment_method_model.dart';part 'payment_method_event.dart';part 'payment_method_state.dart';class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {PaymentMethodBloc(PaymentMethodState initialState) : super(initialState) { on<PaymentMethodInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<PaymentMethodState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<PaymentMethodState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_onInitialize(PaymentMethodInitialEvent event, Emitter<PaymentMethodState> emit, ) async  { emit(state.copyWith(vouchercodeController: TextEditingController(), otherController: TextEditingController(), radioGroup: "", radioGroup1: "")); } 
 }
