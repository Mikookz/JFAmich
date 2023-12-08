import 'package:equatable/equatable.dart';import 'downloaded_item_model.dart';
// ignore: must_be_immutable
class DownloadedModel extends Equatable {DownloadedModel({this.downloadedItemList = const []});

List<DownloadedItemModel> downloadedItemList;

DownloadedModel copyWith({List<DownloadedItemModel>? downloadedItemList}) { return DownloadedModel(
downloadedItemList : downloadedItemList ?? this.downloadedItemList,
); } 
@override List<Object?> get props => [downloadedItemList];
 }
