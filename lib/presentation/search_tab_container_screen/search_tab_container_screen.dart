import 'package:bitcoin/widgets/custom_search_view.dart';import 'package:bitcoin/presentation/search_page/search_page.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';class SearchTabContainerScreen extends StatefulWidget {const SearchTabContainerScreen({Key? key}) : super(key: key);

@override SearchTabContainerScreenState createState() =>  SearchTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class SearchTabContainerScreenState extends State<SearchTabContainerScreen> with  TickerProviderStateMixin {TextEditingController searchController = TextEditingController();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 44.v), _buildFrame1(context), SizedBox(height: 25.v), SizedBox(height: 812.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Recent", style: CustomTextStyles.titleLargeMedium))), SizedBox(height: 12.v), _buildFrame2(context), SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildFrame(context, close: ImageConstant.imgCloseGray600, gSTUSDT: "GST /USDT")), SizedBox(height: 16.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildFrame(context, close: ImageConstant.imgCloseGray800, gSTUSDT: "GST /USDT")), SizedBox(height: 26.v), Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Top Movers", style: theme.textTheme.titleLarge))), SizedBox(height: 23.v), _buildTabview(context), SizedBox(height: 510.v, child: TabBarView(controller: tabviewController, children: [SearchPage(), SearchPage()]))])]))]))])))); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFrame41761, height: 44.adaptSize, width: 44.adaptSize, onTap: () {onTapImgImage(context);}), Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v), child: CustomSearchView(controller: searchController, hintText: "BTCLE/USDT")))])); } 
/// Section Widget
Widget _buildFrame2(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCloseGray800, height: 40.adaptSize, width: 40.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 9.v), child: Text("GST /USDT", style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgIconoirCancel, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 8.v))])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 31.v, width: 380.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.blueGray50, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Nunito', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray600, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Nunito', fontWeight: FontWeight.w400), indicatorColor: appTheme.blueGray50, tabs: [Tab(child: Text("Coins")), Tab(child: Text("Traders"))])); } 
/// Common widget
Widget _buildFrame(BuildContext context, {required String close, required String gSTUSDT, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(width: 131.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: close, height: 40.adaptSize, width: 40.adaptSize), Padding(padding: EdgeInsets.only(top: 8.v, bottom: 9.v), child: Text(gSTUSDT, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray50)))])), CustomImageView(imagePath: ImageConstant.imgIconoirCancel, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 8.v))]); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImgImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
 }