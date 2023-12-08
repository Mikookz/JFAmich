import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/no_notification_screen/models/no_notification_model.dart';part 'no_notification_event.dart';part 'no_notification_state.dart';class NoNotificationBloc extends Bloc<NoNotificationEvent, NoNotificationState> {NoNotificationBloc(NoNotificationState initialState) : super(initialState) { on<NoNotificationInitialEvent>(_onInitialize); }

_onInitialize(NoNotificationInitialEvent event, Emitter<NoNotificationState> emit, ) async  {  } 
 }
