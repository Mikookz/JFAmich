import 'package:equatable/equatable.dart';import 'similiar_item_model.dart';
// ignore: must_be_immutable
class SimiliarModel extends Equatable {SimiliarModel({this.similiarItemList = const []});

List<SimiliarItemModel> similiarItemList;

SimiliarModel copyWith({List<SimiliarItemModel>? similiarItemList}) { return SimiliarModel(
similiarItemList : similiarItemList ?? this.similiarItemList,
); } 
@override List<Object?> get props => [similiarItemList];
 }
