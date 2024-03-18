import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SellScreen extends StatelessWidget {SellScreen({Key? key}) : super(key: key);

TextEditingController bTCLEController = TextEditingController();

TextEditingController uSDTOneController = TextEditingController();

TextEditingController amountController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(height: 822.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 27.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 5.v)), _buildFrame(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "Sell", margin: EdgeInsets.only(top: 51.v, bottom: 24.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildBTCLE(BuildContext context) { return CustomTextFormField(controller: bTCLEController, hintText: "BTCLE", hintStyle: CustomTextStyles.bodyLargeBluegray300, contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildUSDTOne(BuildContext context) { return CustomTextFormField(controller: uSDTOneController, hintText: "USDT", hintStyle: CustomTextStyles.bodyLargeBluegray300, prefix: Container(padding: EdgeInsets.all(2.h), margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(10.h)), child: CustomImageView(imagePath: ImageConstant.imgUsdt1, height: 16.adaptSize, width: 16.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), contentPadding: EdgeInsets.only(top: 13.v, right: 30.h, bottom: 13.v)); } 
/// Section Widget
Widget _buildAmount(BuildContext context) { return CustomTextFormField(controller: amountController, hintText: "Enter amount", textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildConfirmTransfer(BuildContext context) { return CustomElevatedButton(text: "Confirm Transfer", buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration, buttonTextStyle: CustomTextStyles.titleLargeMedium); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("From", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildBTCLE(context), SizedBox(height: 15.v), Text("To", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildUSDTOne(context), SizedBox(height: 15.v), Text("Transfer Amount", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildAmount(context), SizedBox(height: 60.v), _buildConfirmTransfer(context)]))); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
 }
