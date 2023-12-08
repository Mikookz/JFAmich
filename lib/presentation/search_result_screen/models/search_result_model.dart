import 'package:equatable/equatable.dart';import 'searchresult_item_model.dart';
// ignore: must_be_immutable
class SearchResultModel extends Equatable {SearchResultModel({this.searchresultItemList = const []});

List<SearchresultItemModel> searchresultItemList;

SearchResultModel copyWith({List<SearchresultItemModel>? searchresultItemList}) { return SearchResultModel(
searchresultItemList : searchresultItemList ?? this.searchresultItemList,
); } 
@override List<Object?> get props => [searchresultItemList];
 }
