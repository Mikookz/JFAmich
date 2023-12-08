// ignore_for_file: must_be_immutable

part of 'history_delete_bloc.dart';

class HistoryDeleteState extends Equatable {
  HistoryDeleteState({this.historyDeleteModelObj});

  HistoryDeleteModel? historyDeleteModelObj;

  @override
  List<Object?> get props => [
        historyDeleteModelObj,
      ];
  HistoryDeleteState copyWith({HistoryDeleteModel? historyDeleteModelObj}) {
    return HistoryDeleteState(
      historyDeleteModelObj:
          historyDeleteModelObj ?? this.historyDeleteModelObj,
    );
  }
}
