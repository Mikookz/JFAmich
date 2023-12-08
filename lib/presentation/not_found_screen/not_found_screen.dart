import 'bloc/not_found_bloc.dart';
import 'models/not_found_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:zonar_marketing__grapichs/presentation/home_page/home_page.dart';
import 'package:zonar_marketing__grapichs/presentation/profile_page/profile_page.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_page/saved_page.dart';
import 'package:zonar_marketing__grapichs/presentation/search_page/search_page.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_search_view.dart';

class NotFoundScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotFoundBloc>(
      create: (context) => NotFoundBloc(NotFoundState(
        notFoundModelObj: NotFoundModel(),
      ))
        ..add(NotFoundInitialEvent()),
      child: NotFoundScreen(),
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
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocSelector<NotFoundBloc, NotFoundState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    focusNode: FocusNode(),
                    controller: searchController,
                    hintText: "lbl_inception".tr,
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
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgMaskgroupGray40001,
                height: getSize(
                  184,
                ),
                width: getSize(
                  184,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 42,
                ),
                child: Text(
                  "lbl_opsss".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                  bottom: 100,
                ),
                child: Text(
                  "msg_what_you_are_lo".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium12Bluegray10001,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedTabContainerPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(BuildContext context, String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.searchPage:
        return SearchPage.builder(context);
      case AppRoutes.savedPage:
        return SavedPage.builder(context);
      case AppRoutes.downloadedTabContainerPage:
        return DownloadedTabContainerPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
