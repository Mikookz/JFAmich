// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

class HomeState extends Equatable {
  HomeState({
    this.silderIndex = 0,
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        homeModelObj,
      ];
  HomeState copyWith({
    int? silderIndex,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      silderIndex: silderIndex ?? this.silderIndex,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
