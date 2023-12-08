// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

@immutable
abstract class ResetPasswordEvent extends Equatable {}

class ResetPasswordInitialEvent extends ResetPasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends ResetPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
