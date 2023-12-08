import 'package:equatable/equatable.dart';import 'selectsaved_item_model.dart';
// ignore: must_be_immutable
class SelectSavedModel extends Equatable {SelectSavedModel({this.selectsavedItemList = const []});

List<SelectsavedItemModel> selectsavedItemList;

SelectSavedModel copyWith({List<SelectsavedItemModel>? selectsavedItemList}) { return SelectSavedModel(
selectsavedItemList : selectsavedItemList ?? this.selectsavedItemList,
); } 
@override List<Object?> get props => [selectsavedItemList];
 }
