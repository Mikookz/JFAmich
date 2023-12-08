// ignore_for_file: must_be_immutable

part of 'downloaded_bloc.dart';

@immutable
abstract class DownloadedEvent extends Equatable {}

class DownloadedInitialEvent extends DownloadedEvent {
  @override
  List<Object?> get props => [];
}
