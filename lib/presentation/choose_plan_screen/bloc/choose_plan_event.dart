// ignore_for_file: must_be_immutable

part of 'choose_plan_bloc.dart';

@immutable
abstract class ChoosePlanEvent extends Equatable {}

class ChoosePlanInitialEvent extends ChoosePlanEvent {
  @override
  List<Object?> get props => [];
}
