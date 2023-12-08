// ignore_for_file: must_be_immutable

part of 'payment_succesful_popup_bloc.dart';

@immutable
abstract class PaymentSuccesfulPopupEvent extends Equatable {}

class PaymentSuccesfulPopupInitialEvent extends PaymentSuccesfulPopupEvent {
  @override
  List<Object?> get props => [];
}

///event for change checkbox
class ChangeCheckBoxEvent extends PaymentSuccesfulPopupEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBox1Event extends PaymentSuccesfulPopupEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
