import 'package:bitcoin/presentation/add_funds_page/add_funds_page.dart';
import 'package:bitcoin/presentation/market_page/market_page.dart';
import 'package:bitcoin/presentation/card_one_page/card_one_page.dart';
import 'package:bitcoin/presentation/wallet_page/wallet_page.dart';
import 'package:bitcoin/widgets/custom_bottom_app_bar.dart';
import 'package:bitcoin/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrame1(context),
                  SizedBox(height: 32.v),
                  SizedBox(
                      height: 640.v,
                      width: double.infinity,
                      child: Stack(alignment: Alignment.center, children: [

                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 30.h, right: 30.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildFrame(context,
                                          preferences: ImageConstant.imgSetting,
                                          preference: "Account Setting",
                                          onTapFrame: () {
                                        onTapFrame(context);
                                      }),
                                      SizedBox(height: 12.v),
                                      _buildFrame3(context),
                                      SizedBox(height: 12.v),
                                      _buildFrame(context,
                                          preferences:
                                              ImageConstant.imgPreferences,
                                          preference: "Preference",
                                          onTapFrame: () {
                                        onTapFrame2(context);
                                      }),
                                      SizedBox(height: 12.v),
                                      _buildFrame(context,
                                          preferences:
                                              ImageConstant.imgAddressesBook,
                                          preference: "Addresses Book",
                                          onTapFrame: () {
                                        onTapFrame3(context);
                                      }),
                                      SizedBox(height: 12.v),
                                      _buildFrame(context,
                                          preferences:
                                              ImageConstant.imgNotification,
                                          preference: "Notifications",
                                          onTapFrame: () {
                                        onTapFrame4(context);
                                      }),
                                      SizedBox(height: 32.v),
                                      _buildFrame(context,
                                          preferences:
                                              ImageConstant.imgTechnicalSupport,
                                          preference: "Support",
                                          onTapFrame: () {
                                        onTapFrame5(context);
                                      }),
                                      SizedBox(height: 12.v),
                                      _buildFrame(context,
                                          preferences: ImageConstant
                                              .imgSettingsBlueGray50,
                                          preference: "Helping Center",
                                          onTapFrame: () {
                                        onTapFrame6(context);
                                      }),
                                      SizedBox(height: 12.v),
                                      _buildFrame(context,
                                          preferences:
                                              ImageConstant.imgAboutUs2,
                                          preference: "About Us",
                                          onTapFrame: () {
                                        onTapFrame7(context);
                                      }),
                                      SizedBox(height: 32.v),
                                      _buildFrame10(context)
                                    ])))
                      ])),
                  SizedBox(height: 56.v)
                ])),
            bottomNavigationBar: _buildFrame11(context),
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
  Widget _buildFrame1(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  width: 212.h,
                  margin: EdgeInsets.only(top: 15.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                            //padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.additional.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle238x38,
                                height: 38.adaptSize,
                                width: 38.adaptSize,
                                radius: BorderRadius.circular(19.h),
                                alignment: Alignment.center)),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mahmoud ElSaey",
                                  style: theme.textTheme.titleMedium),
                              SizedBox(height: 2.v),
                              Text("0x40b38765696e3d5d8d9d834d8aa",
                                  style: CustomTextStyles.bodySmallBluegray300)
                            ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgCopy1,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 25.v))
                      ])),
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(top: 24.v),
                  color: appTheme.blueGray900,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder20),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 27.v,
                                width: 23.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMobile,
                                          height: 27.v,
                                          width: 23.h,
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgStar38x7,
                                          height: 8.v,
                                          width: 7.h,
                                          radius: BorderRadius.circular(1.h),
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                              left: 7.h, top: 6.v))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgStar18x8,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            radius: BorderRadius.circular(1.h),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 1.h, top: 1.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgStar27x8,
                            height: 7.v,
                            width: 8.h,
                            radius: BorderRadius.circular(1.h),
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 6.v))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrame1(context);
        },
        child: Container(
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 113.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPrivacyPolicy,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    alignment: Alignment.center)),
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("Security",
                                    style: theme.textTheme.titleLarge))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRightBlueGray50,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 4.v))
                ])));
  }

  /// Section Widget
  Widget _buildFrame10(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 103.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgLogout1,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.center)),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text("Logout",
                            style: CustomTextStyles.titleLargeRed400))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame11(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String preferences,
    required String preference,
    Function? onTapFrame,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: CustomImageView(
                      imagePath: preferences,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 2.v),
                  child: Text(preference,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.blueGray50))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlueGray50,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v))
            ])));
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

  /// Navigates to the accountSettingScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountSettingScreen);
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapFrame1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.securityScreen);
  }

  /// Navigates to the preferenceScreen when the action is triggered.
  onTapFrame2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.preferenceScreen);
  }

  /// Navigates to the addressesBookScreen when the action is triggered.
  onTapFrame3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressesBookScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapFrame4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  /// Navigates to the technicalSupportScreen when the action is triggered.
  onTapFrame5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.technicalSupportScreen);
  }

  /// Navigates to the helpingCenterScreen when the action is triggered.
  onTapFrame6(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helpingCenterScreen);
  }

  /// Navigates to the aboutBtcleScreen when the action is triggered.
  onTapFrame7(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aboutBtcleScreen);
  }
}
