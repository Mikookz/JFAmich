// ignore_for_file: must_be_immutable

part of 'similiar_bloc.dart';

@immutable
abstract class SimiliarEvent extends Equatable {}

class SimiliarInitialEvent extends SimiliarEvent {
  @override
  List<Object?> get props => [];
}
