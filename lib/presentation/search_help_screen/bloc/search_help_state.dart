// ignore_for_file: must_be_immutable

part of 'search_help_bloc.dart';

class SearchHelpState extends Equatable {
  SearchHelpState({
    this.groupController,
    this.searchHelpModelObj,
  });

  TextEditingController? groupController;

  SearchHelpModel? searchHelpModelObj;

  @override
  List<Object?> get props => [
        groupController,
        searchHelpModelObj,
      ];
  SearchHelpState copyWith({
    TextEditingController? groupController,
    SearchHelpModel? searchHelpModelObj,
  }) {
    return SearchHelpState(
      groupController: groupController ?? this.groupController,
      searchHelpModelObj: searchHelpModelObj ?? this.searchHelpModelObj,
    );
  }
}
