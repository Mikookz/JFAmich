// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

class PaymentMethodState extends Equatable {
  PaymentMethodState({
    this.vouchercodeController,
    this.otherController,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.paymentMethodModelObj,
  });

  TextEditingController? vouchercodeController;

  TextEditingController? otherController;

  PaymentMethodModel? paymentMethodModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        vouchercodeController,
        otherController,
        radioGroup,
        radioGroup1,
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({
    TextEditingController? vouchercodeController,
    TextEditingController? otherController,
    String? radioGroup,
    String? radioGroup1,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      vouchercodeController:
          vouchercodeController ?? this.vouchercodeController,
      otherController: otherController ?? this.otherController,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
