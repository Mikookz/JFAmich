import '../models/listrectangle1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle1ItemWidget extends StatelessWidget {
  Listrectangle1ItemWidget(this.listrectangle1ItemModelObj);

  Listrectangle1ItemModel listrectangle1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle5178x1241,
          height: getVerticalSize(
            178,
          ),
          width: getHorizontalSize(
            124,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10,
            ),
          ),
          margin: getMargin(
            right: 15,
          ),
        ),
      ),
    );
  }
}
