import 'bloc/download_movie_pop_up_bloc.dart';
import 'models/download_movie_pop_up_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_button.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_checkbox.dart';

// ignore_for_file: must_be_immutable
class DownloadMoviePopUpDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadMoviePopUpBloc>(
      create: (context) => DownloadMoviePopUpBloc(DownloadMoviePopUpState(
        downloadMoviePopUpModelObj: DownloadMoviePopUpModel(),
      ))
        ..add(DownloadMoviePopUpInitialEvent()),
      child: DownloadMoviePopUpDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        325,
      ),
      padding: getPadding(
        left: 30,
        top: 34,
        right: 30,
        bottom: 34,
      ),
      decoration: AppDecoration.fillBluegray800.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFloatingicon,
            height: getSize(
              84,
            ),
            width: getSize(
              84,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Text(
                "lbl_download_file".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular20,
              ),
            ),
          ),
          BlocSelector<DownloadMoviePopUpBloc, DownloadMoviePopUpState, bool?>(
            selector: (state) => state.isCheckbox,
            builder: (context, isCheckbox) {
              return CustomCheckbox(
                text: "lbl_height_1080p".tr,
                value: isCheckbox,
                margin: getMargin(
                  top: 35,
                ),
                fontStyle: CheckboxFontStyle.PoppinsMedium12WhiteA700,
                onChange: (value) {
                  context
                      .read<DownloadMoviePopUpBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          BlocSelector<DownloadMoviePopUpBloc, DownloadMoviePopUpState, bool?>(
            selector: (state) => state.isCheckbox1,
            builder: (context, isCheckbox1) {
              return CustomCheckbox(
                text: "lbl_mid_720p".tr,
                value: isCheckbox1,
                margin: getMargin(
                  top: 15,
                ),
                fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
                onChange: (value) {
                  context
                      .read<DownloadMoviePopUpBloc>()
                      .add(ChangeCheckBox1Event(value: value));
                },
              );
            },
          ),
          BlocSelector<DownloadMoviePopUpBloc, DownloadMoviePopUpState, bool?>(
            selector: (state) => state.isCheckbox2,
            builder: (context, isCheckbox2) {
              return CustomCheckbox(
                text: "lbl_low_360p".tr,
                value: isCheckbox2,
                margin: getMargin(
                  top: 15,
                ),
                fontStyle: CheckboxFontStyle.PoppinsRegular12WhiteA700a2_1,
                onChange: (value) {
                  context
                      .read<DownloadMoviePopUpBloc>()
                      .add(ChangeCheckBox2Event(value: value));
                },
              );
            },
          ),
          CustomButton(
            height: getVerticalSize(
              50,
            ),
            text: "lbl_download".tr,
            margin: getMargin(
              left: 22,
              top: 36,
              right: 22,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
