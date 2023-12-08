// ignore_for_file: must_be_immutable

part of 'search_help_bloc.dart';

@immutable
abstract class SearchHelpEvent extends Equatable {}

class SearchHelpInitialEvent extends SearchHelpEvent {
  @override
  List<Object?> get props => [];
}
