// ignore_for_file: must_be_immutable

part of 'otp_verification_bloc.dart';

@immutable
abstract class OtpVerificationEvent extends Equatable {}

class OtpVerificationInitialEvent extends OtpVerificationEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpVerificationEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
