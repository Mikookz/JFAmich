// ignore_for_file: must_be_immutable

part of 'delete_popup_bloc.dart';

class DeletePopupState extends Equatable {
  DeletePopupState({this.deletePopupModelObj});

  DeletePopupModel? deletePopupModelObj;

  @override
  List<Object?> get props => [
        deletePopupModelObj,
      ];
  DeletePopupState copyWith({DeletePopupModel? deletePopupModelObj}) {
    return DeletePopupState(
      deletePopupModelObj: deletePopupModelObj ?? this.deletePopupModelObj,
    );
  }
}
