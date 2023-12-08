// ignore_for_file: must_be_immutable

part of 'history_delete_bloc.dart';

@immutable
abstract class HistoryDeleteEvent extends Equatable {}

class HistoryDeleteInitialEvent extends HistoryDeleteEvent {
  @override
  List<Object?> get props => [];
}
