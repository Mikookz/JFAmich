// ignore_for_file: must_be_immutable

part of 'not_found_bloc.dart';

@immutable
abstract class NotFoundEvent extends Equatable {}

class NotFoundInitialEvent extends NotFoundEvent {
  @override
  List<Object?> get props => [];
}
