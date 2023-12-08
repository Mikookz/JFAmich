import '../models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(this.searchresultItemModelObj);

  SearchresultItemModel searchresultItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle12078140x102,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        102,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          10,
        ),
      ),
    );
  }
}
