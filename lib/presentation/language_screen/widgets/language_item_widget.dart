import '../models/language_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LanguageItemWidget extends StatelessWidget {
  LanguageItemWidget(this.languageItemModelObj, {this.onTapEngland});

  LanguageItemModel languageItemModelObj;

  VoidCallback? onTapEngland;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapEngland?.call();
      },
      child: Container(
        padding: getPadding(
          left: 20,
          top: 15,
          right: 20,
          bottom: 15,
        ),
        decoration: AppDecoration.outlineWhiteA700cc.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBg40x401,
              height: getSize(
                40,
              ),
              width: getSize(
                40,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  20,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 15,
                top: 12,
                bottom: 9,
              ),
              child: Text(
                languageItemModelObj.countrynameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium12WhiteA700.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.12,
                  ),
                ),
              ),
            ),
            Spacer(),
            CustomIconButton(
              height: 24,
              width: 24,
              margin: getMargin(
                top: 8,
                bottom: 8,
              ),
              variant: IconButtonVariant.FillWhiteA70063,
              shape: IconButtonShape.CircleBorder12,
              padding: IconButtonPadding.PaddingAll4,
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowrightWhiteA70010x5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
