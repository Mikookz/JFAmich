import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/chooseplan_item_model.dart';import 'package:zonar_marketing__grapichs/presentation/choose_plan_screen/models/choose_plan_model.dart';part 'choose_plan_event.dart';part 'choose_plan_state.dart';class ChoosePlanBloc extends Bloc<ChoosePlanEvent, ChoosePlanState> {ChoosePlanBloc(ChoosePlanState initialState) : super(initialState) { on<ChoosePlanInitialEvent>(_onInitialize); }

List<ChooseplanItemModel> fillChooseplanItemList() { return List.generate(3, (index) => ChooseplanItemModel()); } 
_onInitialize(ChoosePlanInitialEvent event, Emitter<ChoosePlanState> emit, ) async  { emit(state.copyWith(haveavouchercodeController: TextEditingController())); emit(state.copyWith(choosePlanModelObj: state.choosePlanModelObj?.copyWith(chooseplanItemList: fillChooseplanItemList()))); } 
 }
