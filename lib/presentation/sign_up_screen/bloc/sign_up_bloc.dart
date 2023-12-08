import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:zonar_marketing__grapichs/data/models/register/post_register_resp.dart';import 'package:zonar_marketing__grapichs/data/models/register/post_register_req.dart';import 'dart:async';import 'package:zonar_marketing__grapichs/data/repository/repository.dart';import 'package:zonar_marketing__grapichs/core/constants/user.dart';part 'sign_up_event.dart';part 'sign_up_state.dart';class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {SignUpBloc(SignUpState initialState) : super(initialState) { on<SignUpInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);on<CreateRegisterEvent>(_callCreateRegister); }

final _repository = Repository();

var postRegisterResp = PostRegisterResp();

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(SignUpInitialEvent event, Emitter<SignUpState> emit, ) async  { emit(state.copyWith(emailaddressController: TextEditingController(), passwordController: TextEditingController(), passwordOneController: TextEditingController(), isShowPassword: true)); } 
FutureOr<void> _callCreateRegister(CreateRegisterEvent event, Emitter<SignUpState> emit, ) async  { var postRegisterReq = PostRegisterReq(
username : state.passwordController?.text,password : state.passwordOneController?.text,email : state.passwordController?.text,name : state.emailaddressController?.text,role: User.role,
);
await _repository.createRegister(
headers: {'Content-Type': 'application/json',},
requestData: postRegisterReq.toJson(),
)
.then((value) async {

	postRegisterResp = value;
_onCreateRegisterSuccess(value,emit);
event.onCreateRegisterEventSuccess.call();
})
.onError((error,stackTrace) {

	//implement error call
_onCreateRegisterError();
event.onCreateRegisterEventError.call();
})
; } 
void _onCreateRegisterSuccess(PostRegisterResp resp, Emitter<SignUpState> emit, ) { 
PrefUtils().setId(resp.data!.id!.toString());emit(state.copyWith(signUpModelObj: state.signUpModelObj?.copyWith(),),); } 
void _onCreateRegisterError() { 
 //implement error method body...
 } 
 }
