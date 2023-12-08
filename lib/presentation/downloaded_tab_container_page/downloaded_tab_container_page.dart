import 'bloc/downloaded_tab_container_bloc.dart';
import 'models/downloaded_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/downloaded_page/downloaded_page.dart';
import 'package:zonar_marketing__grapichs/presentation/downloading_page/downloading_page.dart';

// ignore_for_file: must_be_immutable
class DownloadedTabContainerPage extends StatefulWidget {
  @override
  _DownloadedTabContainerPageState createState() =>
      _DownloadedTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadedTabContainerBloc>(
      create: (context) =>
          DownloadedTabContainerBloc(DownloadedTabContainerState(
        downloadedTabContainerModelObj: DownloadedTabContainerModel(),
      ))
            ..add(DownloadedTabContainerInitialEvent()),
      child: DownloadedTabContainerPage(),
    );
  }
}

class _DownloadedTabContainerPageState extends State<DownloadedTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadedTabContainerBloc, DownloadedTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 11,
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
                          top: 34,
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
                            DownloadedPage.builder(context),
                            DownloadingPage.builder(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
