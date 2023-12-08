import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/downloading_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/downloading_page/models/downloading_model.dart';part 'downloading_event.dart';part 'downloading_state.dart';class DownloadingBloc extends Bloc<DownloadingEvent, DownloadingState> {DownloadingBloc(DownloadingState initialState) : super(initialState) { on<DownloadingInitialEvent>(_onInitialize); }

_onInitialize(DownloadingInitialEvent event, Emitter<DownloadingState> emit, ) async  { emit(state.copyWith(downloadingModelObj: state.downloadingModelObj?.copyWith(downloadingItemList: fillDownloadingItemList()))); } 
List<DownloadingItemModel> fillDownloadingItemList() { return List.generate(2, (index) => DownloadingItemModel()); } 
 }
