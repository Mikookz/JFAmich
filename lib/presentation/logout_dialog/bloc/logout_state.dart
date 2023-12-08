// ignore_for_file: must_be_immutable

part of 'logout_bloc.dart';

class LogoutState extends Equatable {
  LogoutState({this.logoutModelObj});

  LogoutModel? logoutModelObj;

  @override
  List<Object?> get props => [
        logoutModelObj,
      ];
  LogoutState copyWith({LogoutModel? logoutModelObj}) {
    return LogoutState(
      logoutModelObj: logoutModelObj ?? this.logoutModelObj,
    );
  }
}
