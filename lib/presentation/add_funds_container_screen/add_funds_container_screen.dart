import 'package:bitcoin/presentation/add_funds_page/add_funds_page.dart';import 'package:bitcoin/presentation/market_page/market_page.dart';import 'package:bitcoin/presentation/card_one_page/card_one_page.dart';import 'package:bitcoin/presentation/wallet_page/wallet_page.dart';import 'package:bitcoin/widgets/custom_bottom_app_bar.dart';import 'package:bitcoin/widgets/custom_floating_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddFundsContainerScreen extends StatelessWidget {AddFundsContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.addFundsPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildFrame(context), floatingActionButton: CustomFloatingButton(height: 82, width: 52, child: CustomImageView(imagePath: ImageConstant.imgFrame73, height: 41.0.v, width: 26.0.h)), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked)); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return CustomBottomAppBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.addFundsPage; case BottomBarEnum.Market: return AppRoutes.marketPage; case BottomBarEnum.Card: return AppRoutes.cardOnePage; case BottomBarEnum.Wallet: return AppRoutes.walletPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.addFundsPage: return AddFundsPage(); case AppRoutes.marketPage: return MarketPage(); case AppRoutes.cardOnePage: return CardOnePage(); case AppRoutes.walletPage: return WalletPage(); default: return DefaultWidget();} } 
 }
