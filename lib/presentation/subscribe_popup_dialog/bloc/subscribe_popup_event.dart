// ignore_for_file: must_be_immutable

part of 'subscribe_popup_bloc.dart';

@immutable
abstract class SubscribePopupEvent extends Equatable {}

class SubscribePopupInitialEvent extends SubscribePopupEvent {
  @override
  List<Object?> get props => [];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SubscribePopupEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBox1Event extends SubscribePopupEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBox2Event extends SubscribePopupEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
