// ignore_for_file: must_be_immutable

part of 'delete_from_saved_bloc.dart';

@immutable
abstract class DeleteFromSavedEvent extends Equatable {}

class DeleteFromSavedInitialEvent extends DeleteFromSavedEvent {
  @override
  List<Object?> get props => [];
}
