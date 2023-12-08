// ignore_for_file: must_be_immutable

part of 'payment_succesful_popup_bloc.dart';

class PaymentSuccesfulPopupState extends Equatable {
  PaymentSuccesfulPopupState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.paymentSuccesfulPopupModelObj,
  });

  PaymentSuccesfulPopupModel? paymentSuccesfulPopupModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        paymentSuccesfulPopupModelObj,
      ];
  PaymentSuccesfulPopupState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    PaymentSuccesfulPopupModel? paymentSuccesfulPopupModelObj,
  }) {
    return PaymentSuccesfulPopupState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      paymentSuccesfulPopupModelObj:
          paymentSuccesfulPopupModelObj ?? this.paymentSuccesfulPopupModelObj,
    );
  }
}
