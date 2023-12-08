import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class ChipviewmarvelItemModel extends Equatable {ChipviewmarvelItemModel({this.marvelTxt = "Marvel", this.isSelected = false});

String marvelTxt;

bool isSelected;

ChipviewmarvelItemModel copyWith({String? marvelTxt, bool? isSelected}) { return ChipviewmarvelItemModel(
marvelTxt : marvelTxt ?? this.marvelTxt,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [marvelTxt,isSelected];
 }
