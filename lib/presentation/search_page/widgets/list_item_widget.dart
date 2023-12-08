import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle12082135x981,
          height: getVerticalSize(
            135,
          ),
          width: getHorizontalSize(
            98,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10,
            ),
          ),
          margin: getMargin(
            right: 10,
          ),
        ),
      ),
    );
  }
}
