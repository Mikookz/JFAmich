// ignore_for_file: must_be_immutable

part of 'empty_state_downloaded_tab_container_bloc.dart';

class EmptyStateDownloadedTabContainerState extends Equatable {
  EmptyStateDownloadedTabContainerState(
      {this.emptyStateDownloadedTabContainerModelObj});

  EmptyStateDownloadedTabContainerModel?
      emptyStateDownloadedTabContainerModelObj;

  @override
  List<Object?> get props => [
        emptyStateDownloadedTabContainerModelObj,
      ];
  EmptyStateDownloadedTabContainerState copyWith(
      {EmptyStateDownloadedTabContainerModel?
          emptyStateDownloadedTabContainerModelObj}) {
    return EmptyStateDownloadedTabContainerState(
      emptyStateDownloadedTabContainerModelObj:
          emptyStateDownloadedTabContainerModelObj ??
              this.emptyStateDownloadedTabContainerModelObj,
    );
  }
}
