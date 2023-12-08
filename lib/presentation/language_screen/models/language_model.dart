import 'package:equatable/equatable.dart';import 'language_item_model.dart';
// ignore: must_be_immutable
class LanguageModel extends Equatable {LanguageModel({this.languageItemList = const []});

List<LanguageItemModel> languageItemList;

LanguageModel copyWith({List<LanguageItemModel>? languageItemList}) { return LanguageModel(
languageItemList : languageItemList ?? this.languageItemList,
); } 
@override List<Object?> get props => [languageItemList];
 }
