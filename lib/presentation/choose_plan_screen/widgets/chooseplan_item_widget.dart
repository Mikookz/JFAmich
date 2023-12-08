import '../models/chooseplan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChooseplanItemWidget extends StatelessWidget {
  ChooseplanItemWidget(this.chooseplanItemModelObj, {this.onTapSubscribeplan});

  ChooseplanItemModel chooseplanItemModelObj;

  VoidCallback? onTapSubscribeplan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 25,
          top: 22,
          right: 25,
          bottom: 22,
        ),
        decoration: AppDecoration.cardBg.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        chooseplanItemModelObj.typeTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14WhiteA700,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "msg_including_tax_a".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular10Bluegray10003,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 4,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_50".tr,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                25,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_week".tr,
                            style: TextStyle(
                              color: ColorConstant.blueGray100,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              height: getVerticalSize(
                40,
              ),
              text: "lbl_subscribe_plan".tr,
              margin: getMargin(
                top: 18,
              ),
              shape: ButtonShape.CircleBorder20,
              padding: ButtonPadding.PaddingAll8,
              fontStyle: ButtonFontStyle.PoppinsRegular14WhiteA700,
              onTap: () {
                onTapSubscribeplan(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
