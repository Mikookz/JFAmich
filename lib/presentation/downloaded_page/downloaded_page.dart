import '../downloaded_page/widgets/downloaded_item_widget.dart';
import 'bloc/downloaded_bloc.dart';
import 'models/downloaded_item_model.dart';
import 'models/downloaded_model.dart';
import 'package:flutter/material.dart';
import 'package:zonar_marketing__grapichs/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DownloadedPage extends StatefulWidget {
  @override
  _DownloadedPageState createState() => _DownloadedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadedBloc>(
      create: (context) => DownloadedBloc(DownloadedState(
        downloadedModelObj: DownloadedModel(),
      ))
        ..add(DownloadedInitialEvent()),
      child: DownloadedPage(),
    );
  }
}

class _DownloadedPageState extends State<DownloadedPage>
    with AutomaticKeepAliveClientMixin<DownloadedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 25,
                  top: 22,
                  right: 25,
                ),
                child: BlocSelector<DownloadedBloc, DownloadedState,
                    DownloadedModel?>(
                  selector: (state) => state.downloadedModelObj,
                  builder: (context, downloadedModelObj) {
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
                          downloadedModelObj?.downloadedItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        DownloadedItemModel model =
                            downloadedModelObj?.downloadedItemList[index] ??
                                DownloadedItemModel();
                        return DownloadedItemWidget(
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
