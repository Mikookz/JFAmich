import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/payment_succesful_popup_dialog/models/payment_succesful_popup_model.dart';
part 'payment_succesful_popup_event.dart';
part 'payment_succesful_popup_state.dart';

class PaymentSuccesfulPopupBloc
    extends Bloc<PaymentSuccesfulPopupEvent, PaymentSuccesfulPopupState> {
  PaymentSuccesfulPopupBloc(PaymentSuccesfulPopupState initialState)
      : super(initialState) {
    on<PaymentSuccesfulPopupInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PaymentSuccesfulPopupState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<PaymentSuccesfulPopupState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox1: event.value,
    ));
  }

  _onInitialize(
    PaymentSuccesfulPopupInitialEvent event,
    Emitter<PaymentSuccesfulPopupState> emit,
  ) async {
    emit(state.copyWith(
      isCheckbox: false,
      isCheckbox1: false,
    ));
  }
}
