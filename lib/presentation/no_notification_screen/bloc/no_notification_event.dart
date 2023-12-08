// ignore_for_file: must_be_immutable

part of 'no_notification_bloc.dart';

@immutable
abstract class NoNotificationEvent extends Equatable {}

class NoNotificationInitialEvent extends NoNotificationEvent {
  @override
  List<Object?> get props => [];
}
