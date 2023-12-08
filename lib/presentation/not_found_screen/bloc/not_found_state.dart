// ignore_for_file: must_be_immutable

part of 'not_found_bloc.dart';

class NotFoundState extends Equatable {
  NotFoundState({
    this.searchController,
    this.notFoundModelObj,
  });

  TextEditingController? searchController;

  NotFoundModel? notFoundModelObj;

  @override
  List<Object?> get props => [
        searchController,
        notFoundModelObj,
      ];
  NotFoundState copyWith({
    TextEditingController? searchController,
    NotFoundModel? notFoundModelObj,
  }) {
    return NotFoundState(
      searchController: searchController ?? this.searchController,
      notFoundModelObj: notFoundModelObj ?? this.notFoundModelObj,
    );
  }
}
