// ignore_for_file: must_be_immutable

part of 'choose_plan_bloc.dart';

class ChoosePlanState extends Equatable {
  ChoosePlanState({
    this.haveavouchercodeController,
    this.choosePlanModelObj,
  });

  TextEditingController? haveavouchercodeController;

  ChoosePlanModel? choosePlanModelObj;

  @override
  List<Object?> get props => [
        haveavouchercodeController,
        choosePlanModelObj,
      ];
  ChoosePlanState copyWith({
    TextEditingController? haveavouchercodeController,
    ChoosePlanModel? choosePlanModelObj,
  }) {
    return ChoosePlanState(
      haveavouchercodeController:
          haveavouchercodeController ?? this.haveavouchercodeController,
      choosePlanModelObj: choosePlanModelObj ?? this.choosePlanModelObj,
    );
  }
}
