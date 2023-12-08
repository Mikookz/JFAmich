// ignore_for_file: must_be_immutable

part of 'downloading_bloc.dart';

@immutable
abstract class DownloadingEvent extends Equatable {}

class DownloadingInitialEvent extends DownloadingEvent {
  @override
  List<Object?> get props => [];
}
