// ignore_for_file: must_be_immutable

part of 'logout_bloc.dart';

@immutable
abstract class LogoutEvent extends Equatable {}

class LogoutInitialEvent extends LogoutEvent {
  @override
  List<Object?> get props => [];
}
