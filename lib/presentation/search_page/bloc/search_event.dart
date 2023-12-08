// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {}

class SearchInitialEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends SearchEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
