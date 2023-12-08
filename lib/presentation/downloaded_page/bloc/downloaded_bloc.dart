import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/downloaded_item_model.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_page/models/downloaded_model.dart';
part 'downloaded_event.dart';
part 'downloaded_state.dart';

class DownloadedBloc extends Bloc<DownloadedEvent, DownloadedState> {
  DownloadedBloc(DownloadedState initialState) : super(initialState) {
    on<DownloadedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DownloadedInitialEvent event,
    Emitter<DownloadedState> emit,
  ) async {
    emit(state.copyWith(
        downloadedModelObj: state.downloadedModelObj?.copyWith(
      downloadedItemList: fillDownloadedItemList(),
    )));
  }

  List<DownloadedItemModel> fillDownloadedItemList() {
    return List.generate(2, (index) => DownloadedItemModel());
  }
}
