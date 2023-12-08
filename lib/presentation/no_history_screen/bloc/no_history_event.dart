// ignore_for_file: must_be_immutable

part of 'no_history_bloc.dart';

@immutable
abstract class NoHistoryEvent extends Equatable {}

class NoHistoryInitialEvent extends NoHistoryEvent {
  @override
  List<Object?> get props => [];
}
