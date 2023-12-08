import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloaded_tab_container_screen/models/empty_state_downloaded_tab_container_model.dart';
part 'empty_state_downloaded_tab_container_event.dart';
part 'empty_state_downloaded_tab_container_state.dart';

class EmptyStateDownloadedTabContainerBloc extends Bloc<
    EmptyStateDownloadedTabContainerEvent,
    EmptyStateDownloadedTabContainerState> {
  EmptyStateDownloadedTabContainerBloc(
      EmptyStateDownloadedTabContainerState initialState)
      : super(initialState) {
    on<EmptyStateDownloadedTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmptyStateDownloadedTabContainerInitialEvent event,
    Emitter<EmptyStateDownloadedTabContainerState> emit,
  ) async {}
}
