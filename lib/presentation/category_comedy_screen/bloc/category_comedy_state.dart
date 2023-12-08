// ignore_for_file: must_be_immutable

part of 'category_comedy_bloc.dart';

class CategoryComedyState extends Equatable {
  CategoryComedyState({this.categoryComedyModelObj});

  CategoryComedyModel? categoryComedyModelObj;

  @override
  List<Object?> get props => [
        categoryComedyModelObj,
      ];
  CategoryComedyState copyWith({CategoryComedyModel? categoryComedyModelObj}) {
    return CategoryComedyState(
      categoryComedyModelObj:
          categoryComedyModelObj ?? this.categoryComedyModelObj,
    );
  }
}
