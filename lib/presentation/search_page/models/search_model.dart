import 'package:equatable/equatable.dart';import 'chipviewmarvel_item_model.dart';import 'listrectangle2_item_model.dart';import 'list_item_model.dart';
// ignore: must_be_immutable
class SearchModel extends Equatable {SearchModel({this.chipviewmarvelItemList = const [], this.listrectangle2ItemList = const [], this.listItemList = const []});

List<ChipviewmarvelItemModel> chipviewmarvelItemList;

List<Listrectangle2ItemModel> listrectangle2ItemList;

List<ListItemModel> listItemList;

SearchModel copyWith({List<ChipviewmarvelItemModel>? chipviewmarvelItemList, List<Listrectangle2ItemModel>? listrectangle2ItemList, List<ListItemModel>? listItemList}) { return SearchModel(
chipviewmarvelItemList : chipviewmarvelItemList ?? this.chipviewmarvelItemList,
listrectangle2ItemList : listrectangle2ItemList ?? this.listrectangle2ItemList,
listItemList : listItemList ?? this.listItemList,
); } 
@override List<Object?> get props => [chipviewmarvelItemList,listrectangle2ItemList,listItemList];
 }
