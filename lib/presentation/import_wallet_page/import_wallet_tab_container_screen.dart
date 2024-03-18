import 'package:bitcoin/core/app_export.dart';
import 'package:bitcoin/presentation/import_wallet_page/import_wallet_page.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ImportWalletTabContainerScreen extends StatefulWidget {
  const ImportWalletTabContainerScreen({Key? key}) : super(key: key);

  @override
  ImportWalletTabContainerScreenState createState() =>
      ImportWalletTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ImportWalletTabContainerScreenState
    extends State<ImportWalletTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),

            body: SizedBox(
                height: 822.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBackgroundLight,
                      height: 461.v,
                      width: 428.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildTabview(context),
                         // This adds space between the AppBar and TabView. Adjust the height as needed.
                        SizedBox(
                            height: 702.v, // Adjusted the height here to account for the space added.
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  ImportWalletPage(),
                                  ImportWalletPage()
                                ]))
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame41761,
            margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v),
            onTap: () {
              onTapImage(context);
            }),
        title: AppbarTitle(
            text: "Import Wallet",
            margin: EdgeInsets.only(left: 72.h, top: 53.v, bottom: 22.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30 ),
        height: 68.v,
        width: 380.h,
        decoration: BoxDecoration(
            color: appTheme.gray90001,
            borderRadius: BorderRadius.circular(34.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.blueGray50,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray600,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400),
            indicatorSize:  TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(12.0.h),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(22.h),
                gradient: LinearGradient(
                    begin: Alignment(-0.11, -1.54),
                    end: Alignment(1.08, 2.67),
                    colors: [
                      theme.colorScheme.primary,
                      appTheme.gray90002,
                      appTheme.blueGray700
                    ])),
            tabs: [
              Tab(child: Text("Using Seed")),
              Tab(child: Text("Using Private Key"))
            ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
