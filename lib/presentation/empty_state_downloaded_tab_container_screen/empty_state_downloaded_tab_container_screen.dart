import 'bloc/empty_state_downloaded_tab_container_bloc.dart';
import 'models/empty_state_downloaded_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloaded_page/empty_state_downloaded_page.dart';
import 'package:zonar_marketing__grapichs/presentation/empty_state_downloading_page/empty_state_downloading_page.dart';
import 'package:zonar_marketing__grapichs/presentation/home_page/home_page.dart';
import 'package:zonar_marketing__grapichs/presentation/profile_page/profile_page.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_page/saved_page.dart';
import 'package:zonar_marketing__grapichs/presentation/search_page/search_page.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';

class EmptyStateDownloadedTabContainerScreen extends StatefulWidget {
  @override
  _EmptyStateDownloadedTabContainerScreenState createState() =>
      _EmptyStateDownloadedTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EmptyStateDownloadedTabContainerBloc>(
      create: (context) => EmptyStateDownloadedTabContainerBloc(
          EmptyStateDownloadedTabContainerState(
        emptyStateDownloadedTabContainerModelObj:
            EmptyStateDownloadedTabContainerModel(),
      ))
        ..add(EmptyStateDownloadedTabContainerInitialEvent()),
      child: EmptyStateDownloadedTabContainerScreen(),
    );
  }
}

class _EmptyStateDownloadedTabContainerScreenState
    extends State<EmptyStateDownloadedTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmptyStateDownloadedTabContainerBloc,
        EmptyStateDownloadedTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "lbl_download".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      40,
                    ),
                    width: getHorizontalSize(
                      300,
                    ),
                    margin: getMargin(
                      top: 35,
                    ),
                    child: TabBar(
                      controller: tabController,
                      labelColor: ColorConstant.red700,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: ColorConstant.whiteA70087,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorColor: ColorConstant.red700,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_downloaded".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_downloading".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      574,
                    ),
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        EmptyStateDownloadedPage.builder(context),
                        EmptyStateDownloadingPage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: CustomBottomBar(
              onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    widget.navigatorKey.currentContext!, getCurrentRoute(type));
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
