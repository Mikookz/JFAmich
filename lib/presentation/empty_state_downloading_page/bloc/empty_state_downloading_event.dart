// ignore_for_file: must_be_immutable

part of 'empty_state_downloading_bloc.dart';

@immutable
abstract class EmptyStateDownloadingEvent extends Equatable {}

class EmptyStateDownloadingInitialEvent extends EmptyStateDownloadingEvent {
  @override
  List<Object?> get props => [];
}
