// ignore_for_file: must_be_immutable

part of 'episode_bloc.dart';

@immutable
abstract class EpisodeEvent extends Equatable {}

class EpisodeInitialEvent extends EpisodeEvent {
  @override
  List<Object?> get props => [];
}
