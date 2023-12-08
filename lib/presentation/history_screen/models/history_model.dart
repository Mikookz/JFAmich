import 'package:equatable/equatable.dart';import 'history_item_model.dart';
// ignore: must_be_immutable
class HistoryModel extends Equatable {HistoryModel({this.historyItemList = const []});

List<HistoryItemModel> historyItemList;

HistoryModel copyWith({List<HistoryItemModel>? historyItemList}) { return HistoryModel(
historyItemList : historyItemList ?? this.historyItemList,
); } 
@override List<Object?> get props => [historyItemList];
 }
