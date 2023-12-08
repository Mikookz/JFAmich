// ignore_for_file: must_be_immutable

part of 'empty_state_downloaded_bloc.dart';

class EmptyStateDownloadedState extends Equatable {
  EmptyStateDownloadedState({this.emptyStateDownloadedModelObj});

  EmptyStateDownloadedModel? emptyStateDownloadedModelObj;

  @override
  List<Object?> get props => [
        emptyStateDownloadedModelObj,
      ];
  EmptyStateDownloadedState copyWith(
      {EmptyStateDownloadedModel? emptyStateDownloadedModelObj}) {
    return EmptyStateDownloadedState(
      emptyStateDownloadedModelObj:
          emptyStateDownloadedModelObj ?? this.emptyStateDownloadedModelObj,
    );
  }
}
