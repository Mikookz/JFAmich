import '../search_page/widgets/chipviewmarvel_item_widget.dart';
import '../search_page/widgets/list_item_widget.dart';
import '../search_page/widgets/listrectangle2_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/chipviewmarvel_item_model.dart';
import 'models/list_item_model.dart';
import 'models/listrectangle2_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchPage(),
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
          decoration: AppDecoration.fillBlack900,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: BlocSelector<SearchBloc, SearchState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          focusNode: FocusNode(),
                          controller: searchController,
                          hintText: "msg_search_by_title".tr,
                          margin: getMargin(
                            left: 16,
                            right: 16,
                          ),
                          alignment: Alignment.center,
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
                          suffix: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                15,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                searchController!.clear();
                              },
                              icon: Icon(
                                Icons.clear,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 23,
                    ),
                    child: Text(
                      "lbl_recent_searches".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 15,
                    ),
                    child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
                      selector: (state) => state.searchModelObj,
                      builder: (context, searchModelObj) {
                        return Wrap(
                          runSpacing: getVerticalSize(
                            5,
                          ),
                          spacing: getHorizontalSize(
                            5,
                          ),
                          children: List<Widget>.generate(
                            searchModelObj?.chipviewmarvelItemList.length ?? 0,
                            (index) {
                              ChipviewmarvelItemModel model = searchModelObj
                                      ?.chipviewmarvelItemList[index] ??
                                  ChipviewmarvelItemModel();

                              return ChipviewmarvelItemWidget(
                                model,
                                onSelectedChipView: (value) {
                                  context.read<SearchBloc>().add(
                                      UpdateChipViewEvent(
                                          index: index, isSelected: value));
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 25,
                    ),
                    child: Text(
                      "lbl_popular".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        148,
                      ),
                      child:
                          BlocSelector<SearchBloc, SearchState, SearchModel?>(
                        selector: (state) => state.searchModelObj,
                        builder: (context, searchModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              left: 16,
                              top: 13,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  10,
                                ),
                              );
                            },
                            itemCount:
                                searchModelObj?.listrectangle2ItemList.length ??
                                    0,
                            itemBuilder: (context, index) {
                              Listrectangle2ItemModel model = searchModelObj
                                      ?.listrectangle2ItemList[index] ??
                                  Listrectangle2ItemModel();
                              return Listrectangle2ItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 24,
                    ),
                    child: Text(
                      "msg_recommendations".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14WhiteA700,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        149,
                      ),
                      child:
                          BlocSelector<SearchBloc, SearchState, SearchModel?>(
                        selector: (state) => state.searchModelObj,
                        builder: (context, searchModelObj) {
                          return ListView.separated(
                            padding: getPadding(
                              left: 16,
                              top: 14,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  10,
                                ),
                              );
                            },
                            itemCount: searchModelObj?.listItemList.length ?? 0,
                            itemBuilder: (context, index) {
                              ListItemModel model =
                                  searchModelObj?.listItemList[index] ??
                                      ListItemModel();
                              return ListItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
