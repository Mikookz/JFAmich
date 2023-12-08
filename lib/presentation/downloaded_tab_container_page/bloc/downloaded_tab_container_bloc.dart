import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_tab_container_page/models/downloaded_tab_container_model.dart';
part 'downloaded_tab_container_event.dart';
part 'downloaded_tab_container_state.dart';

class DownloadedTabContainerBloc
    extends Bloc<DownloadedTabContainerEvent, DownloadedTabContainerState> {
  DownloadedTabContainerBloc(DownloadedTabContainerState initialState)
      : super(initialState) {
    on<DownloadedTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DownloadedTabContainerInitialEvent event,
    Emitter<DownloadedTabContainerState> emit,
  ) async {}
}
