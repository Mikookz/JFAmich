// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

class EditProfileState extends Equatable {
  EditProfileState({
    this.group7940Controller,
    this.group7942Controller,
    this.emailController,
    this.group7946Controller,
    this.dateController,
    this.selectedDropDownValue,
    this.editProfileModelObj,
  });

  TextEditingController? group7940Controller;

  TextEditingController? group7942Controller;

  TextEditingController? emailController;

  TextEditingController? group7946Controller;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        group7940Controller,
        group7942Controller,
        emailController,
        group7946Controller,
        dateController,
        selectedDropDownValue,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? group7940Controller,
    TextEditingController? group7942Controller,
    TextEditingController? emailController,
    TextEditingController? group7946Controller,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      group7940Controller: group7940Controller ?? this.group7940Controller,
      group7942Controller: group7942Controller ?? this.group7942Controller,
      emailController: emailController ?? this.emailController,
      group7946Controller: group7946Controller ?? this.group7946Controller,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
