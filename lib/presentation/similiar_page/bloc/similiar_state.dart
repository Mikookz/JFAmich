// ignore_for_file: must_be_immutable

part of 'similiar_bloc.dart';

class SimiliarState extends Equatable {
  SimiliarState({this.similiarModelObj});

  SimiliarModel? similiarModelObj;

  @override
  List<Object?> get props => [
        similiarModelObj,
      ];
  SimiliarState copyWith({SimiliarModel? similiarModelObj}) {
    return SimiliarState(
      similiarModelObj: similiarModelObj ?? this.similiarModelObj,
    );
  }
}
