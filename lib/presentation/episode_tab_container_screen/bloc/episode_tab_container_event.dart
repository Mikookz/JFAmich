// ignore_for_file: must_be_immutable

part of 'episode_tab_container_bloc.dart';

@immutable
abstract class EpisodeTabContainerEvent extends Equatable {}

class EpisodeTabContainerInitialEvent extends EpisodeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
