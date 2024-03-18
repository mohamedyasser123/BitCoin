import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_circleimage.dart';import 'package:bitcoin/widgets/app_bar/appbar_trailing_image.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:bitcoin/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';class WalletPage extends StatelessWidget {const WalletPage({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 732.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 32.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 26.v)), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFrame(context), SizedBox(height: 32.v), _buildFrame1(context), SizedBox(height: 16.v), CustomOutlinedButton(text: "Withdrow", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgArrow138768662BlueGray50, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.outlineGray, buttonTextStyle: CustomTextStyles.bodyLargeBluegray50, onPressed: () {onTapWithdrow(context);}), SizedBox(height: 16.v), CustomOutlinedButton(text: "Transfer", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgArrow138768661, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.outlineGray, buttonTextStyle: CustomTextStyles.bodyLargeBluegray50, onPressed: () {onTapTransfer(context);})])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 92.v, leadingWidth: 60.h, leading: AppbarLeadingCircleimage(imagePath: ImageConstant.imgFrame77, margin: EdgeInsets.only(left: 24.h, top: 40.v, bottom: 16.v), onTap: () {onTapCircleImage(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgFrame41516, margin: EdgeInsets.fromLTRB(24.h, 40.v, 24.h, 16.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 6.v, bottom: 5.v), onTap: () {onTapImgClose(context);}), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("Total Balance BTCLE", style: CustomTextStyles.titleLargeBluegray300))]), Text("0.11009874", style: theme.textTheme.displayMedium)]), CustomImageView(imagePath: ImageConstant.imgVisible, height: 32.adaptSize, width: 32.adaptSize, margin: EdgeInsets.only(top: 22.v, bottom: 29.v))]), SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgEqual121630581, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 6.h), padding: EdgeInsets.all(12.h), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgSolarDollarLinear, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 5.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Text("9,195.88", style: theme.textTheme.headlineSmall))]))), Expanded(child: CustomElevatedButton(height: 60.v, text: "9,195.88", margin: EdgeInsets.only(left: 6.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgUsdt1, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL12, buttonTextStyle: theme.textTheme.headlineSmall!))]), SizedBox(height: 6.v)])); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return GestureDetector(onTap: () {onTapFrame(context);}, child: Container(padding: EdgeInsets.symmetric(horizontal: 140.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgArrow138768662, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Text("Deposit", style: CustomTextStyles.bodyLargeBluegray50))]))); } 
/// Navigates to the profileScreen when the action is triggered.
onTapCircleImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 

/// Navigates back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the depositScreen when the action is triggered.
onTapFrame(BuildContext context) { Navigator.pushNamed(context, AppRoutes.depositScreen); } 
/// Navigates to the withdrowScreen when the action is triggered.
onTapWithdrow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.withdrowScreen); } 
/// Navigates to the transferScreen when the action is triggered.
onTapTransfer(BuildContext context) { Navigator.pushNamed(context, AppRoutes.transferScreen); } 
 }
