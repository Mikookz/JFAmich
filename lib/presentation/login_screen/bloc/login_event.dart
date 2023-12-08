// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginInitialEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class CreateLoginEvent extends LoginEvent {
  CreateLoginEvent({
    required this.onCreateLoginEventSuccess,
    required this.onCreateLoginEventError,
  });

  Function onCreateLoginEventSuccess;

  Function onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

class FacebookAuthEvent extends LoginEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends LoginEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends LoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
