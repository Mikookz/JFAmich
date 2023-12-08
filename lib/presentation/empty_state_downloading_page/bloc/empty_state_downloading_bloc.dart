import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloading_page/models/empty_state_downloading_model.dart';
part 'empty_state_downloading_event.dart';
part 'empty_state_downloading_state.dart';

class EmptyStateDownloadingBloc
    extends Bloc<EmptyStateDownloadingEvent, EmptyStateDownloadingState> {
  EmptyStateDownloadingBloc(EmptyStateDownloadingState initialState)
      : super(initialState) {
    on<EmptyStateDownloadingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmptyStateDownloadingInitialEvent event,
    Emitter<EmptyStateDownloadingState> emit,
  ) async {}
}
