// ignore_for_file: must_be_immutable

part of 'category_comedy_bloc.dart';

@immutable
abstract class CategoryComedyEvent extends Equatable {}

class CategoryComedyInitialEvent extends CategoryComedyEvent {
  @override
  List<Object?> get props => [];
}
