import '../saved_page/widgets/saved_item_widget.dart';
import 'bloc/saved_bloc.dart';
import 'models/saved_item_model.dart';
import 'models/saved_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SavedPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedBloc>(
      create: (context) => SavedBloc(SavedState(
        savedModelObj: SavedModel(),
      ))
        ..add(SavedInitialEvent()),
      child: SavedPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 11,
                      right: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_saved".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 95,
                                top: 8,
                              ),
                              child: Text(
                                "lbl_delete".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12WhiteA700,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 35,
                          ),
                          child:
                              BlocSelector<SavedBloc, SavedState, SavedModel?>(
                            selector: (state) => state.savedModelObj,
                            builder: (context, savedModelObj) {
                              return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount:
                                    savedModelObj?.savedItemList.length ?? 0,
                                itemBuilder: (context, index) {
                                  SavedItemModel model =
                                      savedModelObj?.savedItemList[index] ??
                                          SavedItemModel();
                                  return SavedItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
