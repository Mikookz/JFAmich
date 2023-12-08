// ignore_for_file: must_be_immutable

part of 'empty_state_downloaded_tab_container_bloc.dart';

@immutable
abstract class EmptyStateDownloadedTabContainerEvent extends Equatable {}

class EmptyStateDownloadedTabContainerInitialEvent
    extends EmptyStateDownloadedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
