// ignore_for_file: must_be_immutable

part of 'empty_state_downloaded_bloc.dart';

@immutable
abstract class EmptyStateDownloadedEvent extends Equatable {}

class EmptyStateDownloadedInitialEvent extends EmptyStateDownloadedEvent {
  @override
  List<Object?> get props => [];
}
