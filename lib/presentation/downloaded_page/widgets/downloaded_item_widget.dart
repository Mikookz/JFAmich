import '../models/downloaded_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore: must_be_immutable
class DownloadedItemWidget extends StatelessWidget {
  DownloadedItemWidget(this.downloadedItemModelObj);

  DownloadedItemModel downloadedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 10,
        bottom: 10,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12103112x1121,
            height: getSize(
              112,
            ),
            width: getSize(
              112,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                15,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        134,
                      ),
                      margin: getMargin(
                        top: 3,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_captain".tr,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "msg_america_the_w".tr,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgOption,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 26,
                        bottom: 13,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "msg_action_adventu".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12Bluegray300,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "lbl_2_05_32".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10Bluegray300,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgVector106BlueGray300,
                        height: getVerticalSize(
                          10,
                        ),
                        width: getHorizontalSize(
                          1,
                        ),
                        margin: getMargin(
                          left: 8,
                          top: 3,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Text(
                          "lbl_1_2gb".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10Bluegray300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
