// ignore_for_file: must_be_immutable

part of 'saved_empty_bloc.dart';

@immutable
abstract class SavedEmptyEvent extends Equatable {}

class SavedEmptyInitialEvent extends SavedEmptyEvent {
  @override
  List<Object?> get props => [];
}
