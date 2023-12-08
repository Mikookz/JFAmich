import 'bloc/saved_empty_bloc.dart';
import 'models/saved_empty_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:zonar_marketing__grapichs/presentation/home_page/home_page.dart';
import 'package:zonar_marketing__grapichs/presentation/profile_page/profile_page.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_page/saved_page.dart';
import 'package:zonar_marketing__grapichs/presentation/search_page/search_page.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';

class SavedEmptyScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SavedEmptyBloc>(
      create: (context) => SavedEmptyBloc(SavedEmptyState(
        savedEmptyModelObj: SavedEmptyModel(),
      ))
        ..add(SavedEmptyInitialEvent()),
      child: SavedEmptyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedEmptyBloc, SavedEmptyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 59,
                top: 12,
                right: 59,
                bottom: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_save".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium18,
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgMaskgroup1,
                    height: getSize(
                      184,
                    ),
                    width: getSize(
                      184,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 30,
                    ),
                    child: Text(
                      "lbl_not_save".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                      bottom: 179,
                    ),
                    child: Text(
                      "msg_let_s_find_and".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12Bluegray10001,
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
      },
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
