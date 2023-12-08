// ignore_for_file: must_be_immutable

part of 'episode_tab_container_bloc.dart';

class EpisodeTabContainerState extends Equatable {
  EpisodeTabContainerState({this.episodeTabContainerModelObj});

  EpisodeTabContainerModel? episodeTabContainerModelObj;

  @override
  List<Object?> get props => [
        episodeTabContainerModelObj,
      ];
  EpisodeTabContainerState copyWith(
      {EpisodeTabContainerModel? episodeTabContainerModelObj}) {
    return EpisodeTabContainerState(
      episodeTabContainerModelObj:
          episodeTabContainerModelObj ?? this.episodeTabContainerModelObj,
    );
  }
}
