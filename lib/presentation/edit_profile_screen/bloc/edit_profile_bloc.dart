import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:zonar_marketing__grapichs/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:zonar_marketing__grapichs/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

_changeDropDown(ChangeDropDownEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  { emit(state.copyWith(group7940Controller: TextEditingController(), group7942Controller: TextEditingController(), emailController: TextEditingController(), group7946Controller: TextEditingController(), dateController: TextEditingController())); emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList())));
add(FetchMeEvent(onFetchMeEventError: () {

_onFetchMeEventError();
},),);
 } 
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<EditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
event.onFetchMeEventError.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp, Emitter<EditProfileState> emit, ) { 
emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(),group7942Controller : TextEditingController(text: resp.data!.username!.toString()),
emailController : TextEditingController(text: resp.data!.email!.toString()),
group7940Controller : TextEditingController(text: resp.data!.name!.toString()),
),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: .message!.toString(),); } 
 }
