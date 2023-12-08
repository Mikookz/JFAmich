// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

class ForgotPasswordState extends Equatable {
  ForgotPasswordState({
    this.emailaddressController,
    this.forgotPasswordModelObj,
  });

  TextEditingController? emailaddressController;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        emailaddressController,
        forgotPasswordModelObj,
      ];
  ForgotPasswordState copyWith({
    TextEditingController? emailaddressController,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      emailaddressController:
          emailaddressController ?? this.emailaddressController,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}
