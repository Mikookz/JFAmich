// ignore_for_file: must_be_immutable

part of 'downloaded_tab_container_bloc.dart';

class DownloadedTabContainerState extends Equatable {
  DownloadedTabContainerState({this.downloadedTabContainerModelObj});

  DownloadedTabContainerModel? downloadedTabContainerModelObj;

  @override
  List<Object?> get props => [
        downloadedTabContainerModelObj,
      ];
  DownloadedTabContainerState copyWith(
      {DownloadedTabContainerModel? downloadedTabContainerModelObj}) {
    return DownloadedTabContainerState(
      downloadedTabContainerModelObj:
          downloadedTabContainerModelObj ?? this.downloadedTabContainerModelObj,
    );
  }
}
