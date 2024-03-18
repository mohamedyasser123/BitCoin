import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:qr_flutter/qr_flutter.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class DepositScreen extends StatelessWidget {DepositScreen({Key? key}) : super(key: key);

TextEditingController amountController = TextEditingController();

TextEditingController dropmenuOneController = TextEditingController();

TextEditingController copyOneController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController dropmenuOneController1 = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(height: 822.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 32.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 128.v)), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAmount(context), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Text("Network", style: theme.textTheme.bodySmall)), SizedBox(height: 3.v), _buildDropmenuOne(context), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Text("Deposit Address", style: theme.textTheme.bodySmall)), SizedBox(height: 22.v), QrImageView(data: 'https://www.google.com', size: 140.adaptSize), SizedBox(height: 47.v), Align(alignment: Alignment.centerLeft, child: Text("ID", style: theme.textTheme.bodySmall)), SizedBox(height: 3.v), _buildCopyOne(context), SizedBox(height: 15.v), Align(alignment: Alignment.centerLeft, child: Text("Wallet Address", style: theme.textTheme.bodySmall)), SizedBox(height: 3.v), _buildAddress(context), SizedBox(height: 28.v), Align(alignment: Alignment.centerLeft, child: Text("Automatically Transfer to", style: theme.textTheme.bodySmall)), SizedBox(height: 2.v), _buildDropmenuOne1(context), SizedBox(height: 60.v), _buildSend(context)])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "Deposit", margin: EdgeInsets.only(top: 53.v, bottom: 22.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAmount(BuildContext context) { return CustomTextFormField(controller: amountController, hintText: "BTCLE amount", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 32.adaptSize, width: 32.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildDropmenuOne(BuildContext context) { return CustomTextFormField(controller: dropmenuOneController, hintText: "TRC20(Tron)", suffix: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgDropMenu1, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildCopyOne(BuildContext context) { return CustomTextFormField(controller: copyOneController, hintText: "324587962103200478961407", suffix: Container(padding: EdgeInsets.all(8.h), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgCopy1, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(controller: addressController, hintText: "0x40b38765696e3d5d8d9d834d8aad4bb6e418e489", suffix: Container(padding: EdgeInsets.all(8.h), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgCopy1, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildDropmenuOne1(BuildContext context) { return CustomTextFormField(controller: dropmenuOneController1, hintText: "Spot", textInputAction: TextInputAction.done, suffix: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgDropMenu1, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildSend(BuildContext context) { return CustomElevatedButton(text: "Send", rightIcon: Container(margin: EdgeInsets.only(left: 10.h), child: CustomImageView(imagePath: ImageConstant.imgSend, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration, buttonTextStyle: CustomTextStyles.titleLargeMedium); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
 }
