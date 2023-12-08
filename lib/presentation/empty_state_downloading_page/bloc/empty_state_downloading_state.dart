// ignore_for_file: must_be_immutable

part of 'empty_state_downloading_bloc.dart';

class EmptyStateDownloadingState extends Equatable {
  EmptyStateDownloadingState({this.emptyStateDownloadingModelObj});

  EmptyStateDownloadingModel? emptyStateDownloadingModelObj;

  @override
  List<Object?> get props => [
        emptyStateDownloadingModelObj,
      ];
  EmptyStateDownloadingState copyWith(
      {EmptyStateDownloadingModel? emptyStateDownloadingModelObj}) {
    return EmptyStateDownloadingState(
      emptyStateDownloadingModelObj:
          emptyStateDownloadingModelObj ?? this.emptyStateDownloadingModelObj,
    );
  }
}
