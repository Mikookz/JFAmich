// ignore_for_file: must_be_immutable

part of 'downloaded_bloc.dart';

class DownloadedState extends Equatable {
  DownloadedState({this.downloadedModelObj});

  DownloadedModel? downloadedModelObj;

  @override
  List<Object?> get props => [
        downloadedModelObj,
      ];
  DownloadedState copyWith({DownloadedModel? downloadedModelObj}) {
    return DownloadedState(
      downloadedModelObj: downloadedModelObj ?? this.downloadedModelObj,
    );
  }
}
