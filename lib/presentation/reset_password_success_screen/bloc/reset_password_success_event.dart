// ignore_for_file: must_be_immutable

part of 'reset_password_success_bloc.dart';

@immutable
abstract class ResetPasswordSuccessEvent extends Equatable {}

class ResetPasswordSuccessInitialEvent extends ResetPasswordSuccessEvent {
  @override
  List<Object?> get props => [];
}
