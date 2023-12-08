// ignore_for_file: must_be_immutable

part of 'downloading_bloc.dart';

class DownloadingState extends Equatable {
  DownloadingState({this.downloadingModelObj});

  DownloadingModel? downloadingModelObj;

  @override
  List<Object?> get props => [
        downloadingModelObj,
      ];
  DownloadingState copyWith({DownloadingModel? downloadingModelObj}) {
    return DownloadingState(
      downloadingModelObj: downloadingModelObj ?? this.downloadingModelObj,
    );
  }
}
