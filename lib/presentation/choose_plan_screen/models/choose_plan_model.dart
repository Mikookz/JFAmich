import 'package:equatable/equatable.dart';import 'chooseplan_item_model.dart';
// ignore: must_be_immutable
class ChoosePlanModel extends Equatable {ChoosePlanModel({this.chooseplanItemList = const []});

List<ChooseplanItemModel> chooseplanItemList;

ChoosePlanModel copyWith({List<ChooseplanItemModel>? chooseplanItemList}) { return ChoosePlanModel(
chooseplanItemList : chooseplanItemList ?? this.chooseplanItemList,
); } 
@override List<Object?> get props => [chooseplanItemList];
 }
