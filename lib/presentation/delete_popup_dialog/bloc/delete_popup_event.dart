// ignore_for_file: must_be_immutable

part of 'delete_popup_bloc.dart';

@immutable
abstract class DeletePopupEvent extends Equatable {}

class DeletePopupInitialEvent extends DeletePopupEvent {
  @override
  List<Object?> get props => [];
}
