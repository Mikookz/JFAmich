import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'bloc/search_result_bloc.dart';
import 'models/search_result_model.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_search_view.dart';

class SearchResultScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
      create: (context) => SearchResultBloc(SearchResultState(
        searchResultModelObj: SearchResultModel(),
      ))
        ..add(SearchResultInitialEvent()),
      child: SearchResultScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<SearchResultBloc, SearchResultState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "lbl_comedy".tr,
                    margin: getMargin(
                      left: 1,
                    ),
                    padding: SearchViewPadding.PaddingT16,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 13,
                        right: 20,
                        bottom: 13,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        50,
                      ),
                    ),
                    suffix: Container(
                      padding: getPadding(
                        all: 7,
                      ),
                      margin: getMargin(
                        left: 30,
                        top: 13,
                        right: 16,
                        bottom: 13,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA70063,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            11,
                          ),
                        ),
                      ),
                      child: CustomImageView(
                        svgPath:
                            ImageConstant.img0c2c6f25a3334d8595d91f22e636033f,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        50,
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 24,
                ),
                child: Text(
                  "msg_results_for_co".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular14WhiteA700,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 14,
                ),
                child: BlocSelector<SearchResultBloc, SearchResultState,
                    SearchResultModel?>(
                  selector: (state) => state.searchResultModelObj,
                  builder: (context, searchResultModelObj) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          141,
                        ),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(
                          20,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          20,
                        ),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          searchResultModelObj?.searchresultItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        SearchresultItemModel model =
                            searchResultModelObj?.searchresultItemList[index] ??
                                SearchresultItemModel();
                        return SearchresultItemWidget(
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
    );
  }
}
