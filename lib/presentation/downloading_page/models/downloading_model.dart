import 'package:equatable/equatable.dart';import 'downloading_item_model.dart';
// ignore: must_be_immutable
class DownloadingModel extends Equatable {DownloadingModel({this.downloadingItemList = const []});

List<DownloadingItemModel> downloadingItemList;

DownloadingModel copyWith({List<DownloadingItemModel>? downloadingItemList}) { return DownloadingModel(
downloadingItemList : downloadingItemList ?? this.downloadingItemList,
); } 
@override List<Object?> get props => [downloadingItemList];
 }
