import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/delete_from_saved_dialog/models/delete_from_saved_model.dart';
part 'delete_from_saved_event.dart';
part 'delete_from_saved_state.dart';

class DeleteFromSavedBloc
    extends Bloc<DeleteFromSavedEvent, DeleteFromSavedState> {
  DeleteFromSavedBloc(DeleteFromSavedState initialState) : super(initialState) {
    on<DeleteFromSavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DeleteFromSavedInitialEvent event,
    Emitter<DeleteFromSavedState> emit,
  ) async {}
}
