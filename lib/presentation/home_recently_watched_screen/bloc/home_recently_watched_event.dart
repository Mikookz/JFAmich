// ignore_for_file: must_be_immutable

part of 'home_recently_watched_bloc.dart';

@immutable
abstract class HomeRecentlyWatchedEvent extends Equatable {}

class HomeRecentlyWatchedInitialEvent extends HomeRecentlyWatchedEvent {
  @override
  List<Object?> get props => [];
}
