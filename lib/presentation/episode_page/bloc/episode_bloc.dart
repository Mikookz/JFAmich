import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:zonar_marketing__grapichs/presentation/episode_page/models/episode_model.dart';part 'episode_event.dart';part 'episode_state.dart';class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {EpisodeBloc(EpisodeState initialState) : super(initialState) { on<EpisodeInitialEvent>(_onInitialize); }

_onInitialize(EpisodeInitialEvent event, Emitter<EpisodeState> emit, ) async  {  } 
 }
