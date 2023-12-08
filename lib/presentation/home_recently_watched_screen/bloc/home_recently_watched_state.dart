// ignore_for_file: must_be_immutable

part of 'home_recently_watched_bloc.dart';

class HomeRecentlyWatchedState extends Equatable {
  HomeRecentlyWatchedState({
    this.silderIndex = 0,
    this.homeRecentlyWatchedModelObj,
  });

  HomeRecentlyWatchedModel? homeRecentlyWatchedModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        homeRecentlyWatchedModelObj,
      ];
  HomeRecentlyWatchedState copyWith({
    int? silderIndex,
    HomeRecentlyWatchedModel? homeRecentlyWatchedModelObj,
  }) {
    return HomeRecentlyWatchedState(
      silderIndex: silderIndex ?? this.silderIndex,
      homeRecentlyWatchedModelObj:
          homeRecentlyWatchedModelObj ?? this.homeRecentlyWatchedModelObj,
    );
  }
}
