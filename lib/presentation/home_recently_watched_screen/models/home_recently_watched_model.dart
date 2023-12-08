import 'package:equatable/equatable.dart';import 'sliderrectangleten_item_model.dart';import 'listrectanglesix_item_model.dart';import 'listall1_item_model.dart';import 'listrectangle1_item_model.dart';
// ignore: must_be_immutable
class HomeRecentlyWatchedModel extends Equatable {HomeRecentlyWatchedModel({this.sliderrectangletenItemList = const [], this.listrectanglesixItemList = const [], this.listall1ItemList = const [], this.listrectangle1ItemList = const []});

List<SliderrectangletenItemModel> sliderrectangletenItemList;

List<ListrectanglesixItemModel> listrectanglesixItemList;

List<Listall1ItemModel> listall1ItemList;

List<Listrectangle1ItemModel> listrectangle1ItemList;

HomeRecentlyWatchedModel copyWith({List<SliderrectangletenItemModel>? sliderrectangletenItemList, List<ListrectanglesixItemModel>? listrectanglesixItemList, List<Listall1ItemModel>? listall1ItemList, List<Listrectangle1ItemModel>? listrectangle1ItemList}) { return HomeRecentlyWatchedModel(
sliderrectangletenItemList : sliderrectangletenItemList ?? this.sliderrectangletenItemList,
listrectanglesixItemList : listrectanglesixItemList ?? this.listrectanglesixItemList,
listall1ItemList : listall1ItemList ?? this.listall1ItemList,
listrectangle1ItemList : listrectangle1ItemList ?? this.listrectangle1ItemList,
); } 
@override List<Object?> get props => [sliderrectangletenItemList,listrectanglesixItemList,listall1ItemList,listrectangle1ItemList];
 }
