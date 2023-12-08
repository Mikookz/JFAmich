// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

class LanguageState extends Equatable {
  LanguageState({
    this.searchController,
    this.languageModelObj,
  });

  TextEditingController? searchController;

  LanguageModel? languageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        languageModelObj,
      ];
  LanguageState copyWith({
    TextEditingController? searchController,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      searchController: searchController ?? this.searchController,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
