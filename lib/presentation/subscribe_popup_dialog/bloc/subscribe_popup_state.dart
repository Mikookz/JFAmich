// ignore_for_file: must_be_immutable

part of 'subscribe_popup_bloc.dart';

class SubscribePopupState extends Equatable {
  SubscribePopupState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.subscribePopupModelObj,
  });

  SubscribePopupModel? subscribePopupModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        subscribePopupModelObj,
      ];
  SubscribePopupState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    SubscribePopupModel? subscribePopupModelObj,
  }) {
    return SubscribePopupState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      subscribePopupModelObj:
          subscribePopupModelObj ?? this.subscribePopupModelObj,
    );
  }
}
