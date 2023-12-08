import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/profile_page/models/profile_model.dart';part 'profile_event.dart';part 'profile_state.dart';class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {ProfileBloc(ProfileState initialState) : super(initialState) { on<ProfileInitialEvent>(_onInitialize); }

_onInitialize(ProfileInitialEvent event, Emitter<ProfileState> emit, ) async  {  } 
 }
