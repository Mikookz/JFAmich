import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloaded_page/models/empty_state_downloaded_model.dart';
part 'empty_state_downloaded_event.dart';
part 'empty_state_downloaded_state.dart';

class EmptyStateDownloadedBloc
    extends Bloc<EmptyStateDownloadedEvent, EmptyStateDownloadedState> {
  EmptyStateDownloadedBloc(EmptyStateDownloadedState initialState)
      : super(initialState) {
    on<EmptyStateDownloadedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmptyStateDownloadedInitialEvent event,
    Emitter<EmptyStateDownloadedState> emit,
  ) async {}
}
