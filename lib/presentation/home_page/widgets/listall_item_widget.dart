import '../models/listall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class ListallItemWidget extends StatelessWidget {
  ListallItemWidget(this.listallItemModelObj);

  ListallItemModel listallItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          81,
        ),
        margin: getMargin(
          right: 8,
        ),
        padding: getPadding(
          left: 30,
          top: 4,
          right: 33,
          bottom: 4,
        ),
        decoration: AppDecoration.txtStyle.copyWith(
          borderRadius: BorderRadiusStyle.txtCircleBorder14,
        ),
        child: Text(
          listallItemModelObj.allTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular12WhiteA700,
        ),
      ),
    );
  }
}
