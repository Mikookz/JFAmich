// ignore_for_file: must_be_immutable

part of 'delete_from_saved_bloc.dart';

class DeleteFromSavedState extends Equatable {
  DeleteFromSavedState({this.deleteFromSavedModelObj});

  DeleteFromSavedModel? deleteFromSavedModelObj;

  @override
  List<Object?> get props => [
        deleteFromSavedModelObj,
      ];
  DeleteFromSavedState copyWith(
      {DeleteFromSavedModel? deleteFromSavedModelObj}) {
    return DeleteFromSavedState(
      deleteFromSavedModelObj:
          deleteFromSavedModelObj ?? this.deleteFromSavedModelObj,
    );
  }
}
