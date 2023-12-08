import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_empty_screen/models/saved_empty_model.dart';
part 'saved_empty_event.dart';
part 'saved_empty_state.dart';

class SavedEmptyBloc extends Bloc<SavedEmptyEvent, SavedEmptyState> {
  SavedEmptyBloc(SavedEmptyState initialState) : super(initialState) {
    on<SavedEmptyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedEmptyInitialEvent event,
    Emitter<SavedEmptyState> emit,
  ) async {}
}
