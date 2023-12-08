import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/history_delete_dialog/models/history_delete_model.dart';
part 'history_delete_event.dart';
part 'history_delete_state.dart';

class HistoryDeleteBloc extends Bloc<HistoryDeleteEvent, HistoryDeleteState> {
  HistoryDeleteBloc(HistoryDeleteState initialState) : super(initialState) {
    on<HistoryDeleteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryDeleteInitialEvent event,
    Emitter<HistoryDeleteState> emit,
  ) async {}
}
