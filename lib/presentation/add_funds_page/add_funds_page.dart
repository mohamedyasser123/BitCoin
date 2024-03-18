import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddFundsPage extends StatelessWidget {AddFundsPage({Key? key}) : super(key: key);

TextEditingController bTCLEController = TextEditingController();

TextEditingController networkController = TextEditingController();

TextEditingController addressController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(height: 720.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 32.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 26.v)), _buildFrame(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "Funds", margin: EdgeInsets.only(top: 51.v, bottom: 24.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildBTCLE(BuildContext context) { return CustomTextFormField(controller: bTCLEController, hintText: "BTCLE", contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildNetwork(BuildContext context) { return CustomTextFormField(controller: networkController, hintText: "Network", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return CustomTextFormField(controller: addressController, hintText: "0x40b38765696e3d5d8d9d834d8aad4bb6e418e489", textInputAction: TextInputAction.done, suffix: Container(padding: EdgeInsets.all(8.h), margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgQrcode76255851, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildShare(BuildContext context) { return CustomElevatedButton(text: "Share", rightIcon: Container(margin: EdgeInsets.only(left: 10.h), child: CustomImageView(imagePath: ImageConstant.imgShare1, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration, buttonTextStyle: CustomTextStyles.titleLargeMedium); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildBTCLE(context), SizedBox(height: 15.v), Text("Network", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildNetwork(context), SizedBox(height: 15.v), Text("Wallet Address", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildAddress(context), SizedBox(height: 60.v), _buildShare(context)]))); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
 }
