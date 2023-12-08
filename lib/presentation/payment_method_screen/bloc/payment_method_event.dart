// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

@immutable
abstract class PaymentMethodEvent extends Equatable {}

class PaymentMethodInitialEvent extends PaymentMethodEvent {
  @override
  List<Object?> get props => [];
}

///event for change radio button
class ChangeRadioButtonEvent extends PaymentMethodEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change radio button
class ChangeRadioButton1Event extends PaymentMethodEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
