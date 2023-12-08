// ignore_for_file: must_be_immutable

part of 'no_notification_bloc.dart';

class NoNotificationState extends Equatable {
  NoNotificationState({this.noNotificationModelObj});

  NoNotificationModel? noNotificationModelObj;

  @override
  List<Object?> get props => [
        noNotificationModelObj,
      ];
  NoNotificationState copyWith({NoNotificationModel? noNotificationModelObj}) {
    return NoNotificationState(
      noNotificationModelObj:
          noNotificationModelObj ?? this.noNotificationModelObj,
    );
  }
}
