import 'package:equatable/equatable.dart';import 'about_item_model.dart';
// ignore: must_be_immutable
class AboutModel extends Equatable {AboutModel({this.aboutItemList = const []});

List<AboutItemModel> aboutItemList;

AboutModel copyWith({List<AboutItemModel>? aboutItemList}) { return AboutModel(
aboutItemList : aboutItemList ?? this.aboutItemList,
); } 
@override List<Object?> get props => [aboutItemList];
 }
