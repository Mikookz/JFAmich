// ignore_for_file: must_be_immutable

part of 'about_bloc.dart';

@immutable
abstract class AboutEvent extends Equatable {}

class AboutInitialEvent extends AboutEvent {
  @override
  List<Object?> get props => [];
}
