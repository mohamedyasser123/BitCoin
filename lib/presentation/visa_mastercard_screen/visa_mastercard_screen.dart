import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class VisaMastercardScreen extends StatelessWidget {VisaMastercardScreen({Key? key}) : super(key: key);

TextEditingController amountController = TextEditingController();

TextEditingController amountController1 = TextEditingController();

TextEditingController dropmenuOneController = TextEditingController();

TextEditingController visaOneController = TextEditingController();

TextEditingController settingsController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(height: 822.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 26.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 5.v)), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Buy BTCLE", style: theme.textTheme.titleLarge), SizedBox(height: 11.v), Text("Pay", style: theme.textTheme.bodySmall), SizedBox(height: 2.v), _buildAmount(context), SizedBox(height: 15.v), Text("Receive", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildAmount1(context), SizedBox(height: 15.v), Text("Method", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildDropmenuOne(context), SizedBox(height: 26.v), Text("Choose Third Party", style: theme.textTheme.titleLarge), SizedBox(height: 15.v), _buildFrame(context), SizedBox(height: 60.v), _buildBuyBTCLE(context)])))]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "VISA / Mastercard", margin: EdgeInsets.only(top: 52.v, bottom: 23.v)), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAmount(BuildContext context) { return CustomTextFormField(controller: amountController, hintText: "Enter payment amount", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildAmount1(BuildContext context) { return CustomTextFormField(controller: amountController1, hintText: "BTCLE amount", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 32.adaptSize, width: 32.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildDropmenuOne(BuildContext context) { return CustomTextFormField(controller: dropmenuOneController, hintText: "VIZA", suffix: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgDropMenu1, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v)); } 
/// Section Widget
Widget _buildVisaOne(BuildContext context) { return CustomTextFormField(controller: visaOneController, hintText: "VISA", prefix: Container(padding: EdgeInsets.all(2.h), margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgVisa1, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), suffix: Padding(padding: EdgeInsets.fromLTRB(30.h, 12.v, 11.h, 13.v), child: Text("0.98 USD / USDT", style: TextStyle(color: Color(0XFF70747E), fontSize: 16.fSize, fontFamily: 'Nunito', fontWeight: FontWeight.w400))), suffixConstraints: BoxConstraints(maxHeight: 48.v), contentPadding: EdgeInsets.only(top: 13.v, right: 30.h, bottom: 13.v), borderDecoration: TextFormFieldStyleHelper.outlineOrange, filled: true, fillColor: appTheme.gray90001); } 
/// Section Widget
Widget _buildSettings(BuildContext context) { return CustomTextFormField(controller: settingsController, hintText: "Mastercard", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(padding: EdgeInsets.all(2.h), margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), suffix: Padding(padding: EdgeInsets.fromLTRB(30.h, 12.v, 11.h, 13.v), child: Text("0.98 USD / USDT", style: TextStyle(color: Color(0XFF70747E), fontSize: 16.fSize, fontFamily: 'Nunito', fontWeight: FontWeight.w400))), suffixConstraints: BoxConstraints(maxHeight: 48.v), obscureText: true, contentPadding: EdgeInsets.only(top: 13.v, right: 30.h, bottom: 13.v)); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Column(children: [_buildVisaOne(context), SizedBox(height: 20.v), _buildSettings(context)]); } 
/// Section Widget
Widget _buildBuyBTCLE(BuildContext context) { return CustomElevatedButton(text: "Buy BTCLE", buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration, buttonTextStyle: CustomTextStyles.titleLargeMedium, onPressed: () {onTapBuyBTCLE(context);}); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
/// Navigates to the visaMastercardOneScreen when the action is triggered.
onTapBuyBTCLE(BuildContext context) { Navigator.pushNamed(context, AppRoutes.visaMastercardOneScreen); } 
 }
