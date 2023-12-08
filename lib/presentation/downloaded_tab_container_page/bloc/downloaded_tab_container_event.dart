// ignore_for_file: must_be_immutable

part of 'downloaded_tab_container_bloc.dart';

@immutable
abstract class DownloadedTabContainerEvent extends Equatable {}

class DownloadedTabContainerInitialEvent extends DownloadedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
