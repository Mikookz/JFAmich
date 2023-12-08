import 'bloc/logout_bloc.dart';
import 'models/logout_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogoutDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutBloc>(
      create: (context) => LogoutBloc(LogoutState(
        logoutModelObj: LogoutModel(),
      ))
        ..add(LogoutInitialEvent()),
      child: LogoutDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 17,
        top: 34,
        right: 17,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolume99x99,
            height: getSize(
              98,
            ),
            width: getSize(
              98,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 22,
            ),
            child: Text(
              "msg_are_you_sure_yo".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium18,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "lbl_no".tr,
            margin: getMargin(
              left: 14,
              top: 33,
              right: 14,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 28,
              bottom: 58,
            ),
            child: Text(
              "lbl_yes".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16,
            ),
          ),
        ],
      ),
    );
  }
}
