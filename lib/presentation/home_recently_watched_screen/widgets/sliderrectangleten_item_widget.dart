import '../models/sliderrectangleten_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class SliderrectangletenItemWidget extends StatelessWidget {
  SliderrectangletenItemWidget(this.sliderrectangletenItemModelObj);

  SliderrectangletenItemModel sliderrectangletenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage6297x375,
      height: getVerticalSize(
        297,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
