import 'package:bitcoin/presentation/add_funds_page/add_funds_page.dart';
import 'package:bitcoin/presentation/market_page/market_page.dart';
import 'package:bitcoin/presentation/card_one_page/card_one_page.dart';
import 'package:bitcoin/presentation/wallet_page/wallet_page.dart';
import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title_searchview.dart';
import 'package:bitcoin/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_outlined_button.dart';
import 'package:bitcoin/presentation/home_new_profile_up_page/home_new_profile_up_page.dart';
import 'package:bitcoin/widgets/custom_bottom_app_bar.dart';
import 'package:bitcoin/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

import '../profile_screen/profile_screen.dart';

class HomeNewProfileUpTabContainerScreen extends StatefulWidget {
  const HomeNewProfileUpTabContainerScreen({Key? key}) : super(key: key);

  @override
  HomeNewProfileUpTabContainerScreenState createState() =>
      HomeNewProfileUpTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomeNewProfileUpTabContainerScreenState
    extends State<HomeNewProfileUpTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  TextEditingController arrowTwoController = TextEditingController();

  TextEditingController arrowOneController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: ProfileScreen(), //  drawer side menu
            ),
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildFrame(context),
                    SizedBox(height: 20.v),
                    _buildFrame1(context),
                    SizedBox(height: 32.v),
                    _buildEightySix(context),
                    SizedBox(height: 26.v),
                    _buildView(context),
                    _buildTabBarView(context)
                  ])))
                ])),
            bottomNavigationBar: _buildFrame2(context),
            floatingActionButton: CustomFloatingButton(
                height: 82,
                width: 52,
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrame73,
                    height: 41.0.v,
                    width: 26.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        leadingWidth: 60.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgRectangle236x36,
            margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapCircleImage(context);
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 8.h),
            hintText: "BTCLE/USDT",
            controller: searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame41516BlueGray200,
              margin: EdgeInsets.only(left: 8.h, top: 10.v, right: 10.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame41514,
              margin: EdgeInsets.only(left: 8.h, top: 10.v, right: 10.h),
              onTap: () {
                onTapImage(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame41517,
              margin: EdgeInsets.only(left: 8.h, top: 10.v, right: 34.h),
              onTap: () {
                onTapImage1(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildBuyBTCLE(BuildContext context) {
    return CustomElevatedButton(
        height: 31.v,
        width: 120.h,
        text: "Buy BTCLE",
        margin: EdgeInsets.symmetric(vertical: 33.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueGrayTL15Decoration,
        buttonTextStyle: CustomTextStyles.bodyLargeBluegray50);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text("Total value BTCLE",
                              style: CustomTextStyles.bodySmallBluegray300)),
                      CustomImageView(
                          imagePath: ImageConstant.imgVisible,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 12.h))
                    ]),
                    SizedBox(
                        height: 52.v,
                        width: 135.h,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("0.11009874",
                                  style:
                                      CustomTextStyles.headlineSmallRegular)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEqual121630581Gray600,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("9,195.88",
                                        style: CustomTextStyles
                                            .bodySmallBluegray300))
                              ]))
                        ]))
                  ])),
          _buildBuyBTCLE(context)
        ]));
  }

  /// Section Widget
  Widget _buildArrowTwo(BuildContext context) {
    return CustomTextFormField(
        width: 120.h,
        controller: arrowTwoController,
        hintText: "Deposit",
        hintStyle: CustomTextStyles.bodyLargeBluegray300,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(10.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrow138768662BlueGray300,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 40.v),
        contentPadding: EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v));
  }

  /// Section Widget
  Widget _buildWithdrow(BuildContext context) {
    return CustomOutlinedButton(
        height: 40.v,
        width: 120.h,
        text: "Withdrow",
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrow138768662BlueGray30016x16,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: CustomTextStyles.bodyLargeBluegray300,
        onPressed: () {
          onTapWithdrow(context);
        });
  }

  /// Section Widget
  Widget _buildArrowOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            width: 120.h,
            controller: arrowOneController,
            hintText: "Transfer",
            hintStyle: CustomTextStyles.bodyLargeBluegray300,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 12.v, 8.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgArrow138768661BlueGray300,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 40.v),
            contentPadding:
                EdgeInsets.only(top: 9.v, right: 27.h, bottom: 9.v)));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildArrowTwo(context),
          _buildWithdrow(context),
          _buildArrowOne(context)
        ]));
  }

  /// Section Widget
  Widget _buildEightySix(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 232.v,
            width: 404.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.topRight,
                 ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle850,
                        height: 232.v,
                        width: 184.h,
                        radius: BorderRadius.circular(16.h)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle851,
                              height: 136.v,
                              width: 184.h,
                              radius: BorderRadius.circular(16.h)),
                          SizedBox(height: 12.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle852,
                              height: 84.v,
                              width: 184.h,
                              radius: BorderRadius.circular(16.h))
                        ]))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 210.v,
            width: 404.h,
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  ),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Top Movers",
                                style: theme.textTheme.titleLarge),
                            SizedBox(height: 15.v),
                            Container(
                                height: 41.v,
                                width: 380.h,
                                child: TabBar(
                                    controller: tabviewController,
                                    labelPadding: EdgeInsets.zero,
                                    tabs: [
                                      Tab(child: Text("Gainers",style: TextStyle(color: Colors.white),)),
                                      Tab(child: Text("Losers",style: TextStyle(color: Colors.white),)),
                                      Tab(child: Text("Newly List",style: TextStyle(color: Colors.white),))
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
        height: 575.v,
        child: TabBarView(controller: tabviewController, children: [
          HomeNewProfileUpPage(),
          HomeNewProfileUpPage(),
          HomeNewProfileUpPage()
        ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.addFundsPage;
      case BottomBarEnum.Market:
        return AppRoutes.marketPage;
      case BottomBarEnum.Card:
        return AppRoutes.cardOnePage;
      case BottomBarEnum.Wallet:
        return AppRoutes.walletPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.addFundsPage:
        return AddFundsPage();
      case AppRoutes.marketPage:
        return MarketPage();
      case AppRoutes.cardOnePage:
        return CardOnePage();
      case AppRoutes.walletPage:
        return WalletPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the technicalSupportScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.technicalSupportScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  /// Navigates to the withdrowScreen when the action is triggered.
  onTapWithdrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.withdrowScreen);
  }
}
