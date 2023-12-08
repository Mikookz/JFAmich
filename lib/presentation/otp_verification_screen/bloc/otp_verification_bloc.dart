import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/otp_verification_screen/models/otp_verification_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'otp_verification_event.dart';part 'otp_verification_state.dart';class OtpVerificationBloc extends Bloc<OtpVerificationEvent, OtpVerificationState> with  CodeAutoFill {OtpVerificationBloc(OtpVerificationState initialState) : super(initialState) { on<OtpVerificationInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<OtpVerificationState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(OtpVerificationInitialEvent event, Emitter<OtpVerificationState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
