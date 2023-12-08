import 'package:equatable/equatable.dart';import 'slidergroup427319005_item_model.dart';import 'listall_item_model.dart';import 'listrectangle_item_model.dart';import 'listrectanglefive_item_model.dart';
// ignore: must_be_immutable
class HomeModel extends Equatable {HomeModel({this.slidergroup427319005ItemList = const [], this.listallItemList = const [], this.listrectangleItemList = const [], this.listrectanglefiveItemList = const []});

List<Slidergroup427319005ItemModel> slidergroup427319005ItemList;

List<ListallItemModel> listallItemList;

List<ListrectangleItemModel> listrectangleItemList;

List<ListrectanglefiveItemModel> listrectanglefiveItemList;

HomeModel copyWith({List<Slidergroup427319005ItemModel>? slidergroup427319005ItemList, List<ListallItemModel>? listallItemList, List<ListrectangleItemModel>? listrectangleItemList, List<ListrectanglefiveItemModel>? listrectanglefiveItemList}) { return HomeModel(
slidergroup427319005ItemList : slidergroup427319005ItemList ?? this.slidergroup427319005ItemList,
listallItemList : listallItemList ?? this.listallItemList,
listrectangleItemList : listrectangleItemList ?? this.listrectangleItemList,
listrectanglefiveItemList : listrectanglefiveItemList ?? this.listrectanglefiveItemList,
); } 
@override List<Object?> get props => [slidergroup427319005ItemList,listallItemList,listrectangleItemList,listrectanglefiveItemList];
 }
