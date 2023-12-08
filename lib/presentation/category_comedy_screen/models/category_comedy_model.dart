import 'package:equatable/equatable.dart';import 'gridrectangle_item_model.dart';
// ignore: must_be_immutable
class CategoryComedyModel extends Equatable {CategoryComedyModel({this.gridrectangleItemList = const []});

List<GridrectangleItemModel> gridrectangleItemList;

CategoryComedyModel copyWith({List<GridrectangleItemModel>? gridrectangleItemList}) { return CategoryComedyModel(
gridrectangleItemList : gridrectangleItemList ?? this.gridrectangleItemList,
); } 
@override List<Object?> get props => [gridrectangleItemList];
 }
