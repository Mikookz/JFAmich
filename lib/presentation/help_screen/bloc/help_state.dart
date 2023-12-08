// ignore_for_file: must_be_immutable

part of 'help_bloc.dart';

class HelpState extends Equatable {
  HelpState({
    this.groupController,
    this.helpModelObj,
  });

  TextEditingController? groupController;

  HelpModel? helpModelObj;

  @override
  List<Object?> get props => [
        groupController,
        helpModelObj,
      ];
  HelpState copyWith({
    TextEditingController? groupController,
    HelpModel? helpModelObj,
  }) {
    return HelpState(
      groupController: groupController ?? this.groupController,
      helpModelObj: helpModelObj ?? this.helpModelObj,
    );
  }
}
