// ignore_for_file: must_be_immutable

part of 'help_bloc.dart';

@immutable
abstract class HelpEvent extends Equatable {}

class HelpInitialEvent extends HelpEvent {
  @override
  List<Object?> get props => [];
}
