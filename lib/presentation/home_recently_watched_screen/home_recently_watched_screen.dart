import '../home_recently_watched_screen/widgets/listall1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectangle1_item_widget.dart';
import '../home_recently_watched_screen/widgets/listrectanglesix_item_widget.dart';
import '../home_recently_watched_screen/widgets/sliderrectangleten_item_widget.dart';
import 'bloc/home_recently_watched_bloc.dart';
import 'models/home_recently_watched_model.dart';
import 'models/listall1_item_model.dart';
import 'models/listrectangle1_item_model.dart';
import 'models/listrectanglesix_item_model.dart';
import 'models/sliderrectangleten_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_tab_container_page/downloaded_tab_container_page.dart';
import 'package:zonar_marketing__grapichs/presentation/home_page/home_page.dart';
import 'package:zonar_marketing__grapichs/presentation/profile_page/profile_page.dart';
import 'package:zonar_marketing__grapichs/presentation/saved_page/saved_page.dart';
import 'package:zonar_marketing__grapichs/presentation/search_page/search_page.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';

class HomeRecentlyWatchedScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeRecentlyWatchedBloc>(
      create: (context) => HomeRecentlyWatchedBloc(HomeRecentlyWatchedState(
        homeRecentlyWatchedModelObj: HomeRecentlyWatchedModel(),
      ))
        ..add(HomeRecentlyWatchedInitialEvent()),
      child: HomeRecentlyWatchedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocBuilder<HomeRecentlyWatchedBloc, HomeRecentlyWatchedState>(
                  builder: (context, state) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          297,
                        ),
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          state.silderIndex = index;
                        },
                      ),
                      itemCount: state.homeRecentlyWatchedModelObj
                              ?.sliderrectangletenItemList.length ??
                          0,
                      itemBuilder: (context, index, realIndex) {
                        SliderrectangletenItemModel model = state
                                .homeRecentlyWatchedModelObj
                                ?.sliderrectangletenItemList[index] ??
                            SliderrectangletenItemModel();
                        return SliderrectangletenItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 10,
                  ),
                  child: Text(
                    "lbl_last_watched".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium14WhiteA700,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    171,
                  ),
                  child: BlocSelector<HomeRecentlyWatchedBloc,
                      HomeRecentlyWatchedState, HomeRecentlyWatchedModel?>(
                    selector: (state) => state.homeRecentlyWatchedModelObj,
                    builder: (context, homeRecentlyWatchedModelObj) {
                      return ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 11,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              10,
                            ),
                          );
                        },
                        itemCount: homeRecentlyWatchedModelObj
                                ?.listrectanglesixItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          ListrectanglesixItemModel model =
                              homeRecentlyWatchedModelObj
                                      ?.listrectanglesixItemList[index] ??
                                  ListrectanglesixItemModel();
                          return ListrectanglesixItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                  ),
                  child: Text(
                    "lbl_categories".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold16,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      41,
                    ),
                    child: BlocSelector<HomeRecentlyWatchedBloc,
                        HomeRecentlyWatchedState, HomeRecentlyWatchedModel?>(
                      selector: (state) => state.homeRecentlyWatchedModelObj,
                      builder: (context, homeRecentlyWatchedModelObj) {
                        return ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 13,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                8,
                              ),
                            );
                          },
                          itemCount: homeRecentlyWatchedModelObj
                                  ?.listall1ItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            Listall1ItemModel model =
                                homeRecentlyWatchedModelObj
                                        ?.listall1ItemList[index] ??
                                    Listall1ItemModel();
                            return Listall1ItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 17,
                      right: 17,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_most_popular".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_see_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      185,
                    ),
                    child: BlocSelector<HomeRecentlyWatchedBloc,
                        HomeRecentlyWatchedState, HomeRecentlyWatchedModel?>(
                      selector: (state) => state.homeRecentlyWatchedModelObj,
                      builder: (context, homeRecentlyWatchedModelObj) {
                        return ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 7,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                15,
                              ),
                            );
                          },
                          itemCount: homeRecentlyWatchedModelObj
                                  ?.listrectangle1ItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            Listrectangle1ItemModel model =
                                homeRecentlyWatchedModelObj
                                        ?.listrectangle1ItemList[index] ??
                                    Listrectangle1ItemModel();
                            return Listrectangle1ItemWidget(
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
