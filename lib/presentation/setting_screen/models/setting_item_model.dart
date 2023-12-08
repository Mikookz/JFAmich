import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class SettingItemModel extends Equatable {SettingItemModel({this.typeTxt = "Notification", this.isSelectedSwitch = false, this.id});

String typeTxt;

bool isSelectedSwitch;

String? id;

SettingItemModel copyWith({String? typeTxt, bool? isSelectedSwitch, String? id}) { return SettingItemModel(
typeTxt : typeTxt ?? this.typeTxt,
isSelectedSwitch : isSelectedSwitch ?? this.isSelectedSwitch,
id : id ?? this.id,
); } 
@override List<Object?> get props => [typeTxt,isSelectedSwitch,id];
 }
