// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.passwordController,
    this.passwordOneController,
    this.isShowPassword = true,
    this.resetPasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? passwordOneController;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        passwordController,
        passwordOneController,
        isShowPassword,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? passwordOneController,
    bool? isShowPassword,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      passwordController: passwordController ?? this.passwordController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
