// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.emailaddressController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginModelObj,
  });

  TextEditingController? emailaddressController;

  TextEditingController? passwordController;

  LoginModel? loginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailaddressController,
        passwordController,
        isShowPassword,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? emailaddressController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailaddressController:
          emailaddressController ?? this.emailaddressController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
