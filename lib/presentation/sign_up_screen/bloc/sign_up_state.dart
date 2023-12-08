// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.emailaddressController,
    this.passwordController,
    this.passwordOneController,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? emailaddressController;

  TextEditingController? passwordController;

  TextEditingController? passwordOneController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailaddressController,
        passwordController,
        passwordOneController,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? emailaddressController,
    TextEditingController? passwordController,
    TextEditingController? passwordOneController,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      emailaddressController:
          emailaddressController ?? this.emailaddressController,
      passwordController: passwordController ?? this.passwordController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
