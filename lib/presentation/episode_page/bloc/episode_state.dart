// ignore_for_file: must_be_immutable

part of 'episode_bloc.dart';

class EpisodeState extends Equatable {
  EpisodeState({this.episodeModelObj});

  EpisodeModel? episodeModelObj;

  @override
  List<Object?> get props => [
        episodeModelObj,
      ];
  EpisodeState copyWith({EpisodeModel? episodeModelObj}) {
    return EpisodeState(
      episodeModelObj: episodeModelObj ?? this.episodeModelObj,
    );
  }
}
