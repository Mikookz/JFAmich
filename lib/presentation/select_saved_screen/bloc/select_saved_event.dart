// ignore_for_file: must_be_immutable

part of 'select_saved_bloc.dart';

@immutable
abstract class SelectSavedEvent extends Equatable {}

class SelectSavedInitialEvent extends SelectSavedEvent {
  @override
  List<Object?> get props => [];
}
