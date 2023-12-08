// ignore_for_file: must_be_immutable

part of 'setting_bloc.dart';

@immutable
abstract class SettingEvent extends Equatable {}

class SettingInitialEvent extends SettingEvent {
  @override
  List<Object?> get props => [];
}

class SettingItemEvent extends SettingEvent {
  SettingItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
