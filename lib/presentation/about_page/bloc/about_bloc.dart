import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/about_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/about_page/models/about_model.dart';part 'about_event.dart';part 'about_state.dart';class AboutBloc extends Bloc<AboutEvent, AboutState> {AboutBloc(AboutState initialState) : super(initialState) { on<AboutInitialEvent>(_onInitialize); }

_onInitialize(AboutInitialEvent event, Emitter<AboutState> emit, ) async  { emit(state.copyWith(aboutModelObj: state.aboutModelObj?.copyWith(aboutItemList: fillAboutItemList()))); } 
List<AboutItemModel> fillAboutItemList() { return List.generate(4, (index) => AboutItemModel()); } 
 }
