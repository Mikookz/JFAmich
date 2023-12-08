import 'package:equatable/equatable.dart';import 'setting_item_model.dart';
// ignore: must_be_immutable
class SettingModel extends Equatable {SettingModel({this.settingItemList = const []});

List<SettingItemModel> settingItemList;

SettingModel copyWith({List<SettingItemModel>? settingItemList}) { return SettingModel(
settingItemList : settingItemList ?? this.settingItemList,
); } 
@override List<Object?> get props => [settingItemList];
 }
