import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:bitcoin/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';import 'package:bitcoin/presentation/bank_deposit_bottomsheet/bank_deposit_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class BankDepositOneScreen extends StatelessWidget {BankDepositOneScreen({Key? key}) : super(key: key);

TextEditingController frameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController frameController1 = TextEditingController();

TextEditingController aHLIUNITEDBANKController = TextEditingController();

TextEditingController frameController2 = TextEditingController();

TextEditingController nBEGEGCXController = TextEditingController();

TextEditingController frameController3 = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 32.v), Expanded(child: SingleChildScrollView(child: Container(height: 873.v, width: double.maxFinite, margin: EdgeInsets.only(bottom: 5.v), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildFrame(context), SizedBox(height: 24.v), Text("Card Details", style: theme.textTheme.titleLarge), SizedBox(height: 8.v), Text("Cardholder Name", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildFrame1(context), SizedBox(height: 15.v), Text("Card Number", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildCardNumber(context), SizedBox(height: 15.v), _buildFrame4(context), SizedBox(height: 24.v), Text("Bank Details", style: theme.textTheme.titleLarge), SizedBox(height: 8.v), Text("Bank Name", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildAHLIUNITEDBANK(context), SizedBox(height: 15.v), Text("Local Number", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildFrame5(context), SizedBox(height: 15.v), Text("SWIFT Code", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildNBEGEGCX(context), SizedBox(height: 15.v), Text("IBAN Number", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), _buildFrame6(context)]))), CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 169.v))]))))])), bottomNavigationBar: _buildFrameThirtySix(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "Bank Deposit", margin: EdgeInsets.only(top: 53.v, bottom: 22.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgVideo1, margin: EdgeInsets.fromLTRB(24.h, 44.v, 24.h, 16.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 26.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgHeroiconsCredi, height: 32.adaptSize, width: 32.adaptSize, alignment: Alignment.centerLeft), SizedBox(height: 26.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgSettingsGray600, height: 8.v, width: 56.h, margin: EdgeInsets.only(top: 7.v, bottom: 6.v)), CustomImageView(imagePath: ImageConstant.imgSettingsGray600, height: 8.v, width: 56.h, margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 6.v)), CustomImageView(imagePath: ImageConstant.imgSettingsGray600, height: 8.v, width: 56.h, margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 6.v)), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("4 7 2 1", style: theme.textTheme.titleMedium))])), SizedBox(height: 9.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 11.v), child: Text("MAHMOUD ABD ELLATIF", style: CustomTextStyles.bodyLargeBluegray50)), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("EXP", style: theme.textTheme.bodyLarge), SizedBox(height: 1.v), Text("12/26", style: theme.textTheme.titleMedium)])])])); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return CustomTextFormField(controller: frameController, hintText: "Mahmoud Abd Ellattif Mahmoud", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildCardNumber(BuildContext context) { return CustomTextFormField(controller: cardNumberController, hintText: "12744587965213487", contentPadding: EdgeInsets.all(13.h)); } 
/// Section Widget
Widget _buildFrame2(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("EXP Date", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), Container(width: 240.h, padding: EdgeInsets.all(11.h), decoration: AppDecoration.card.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("06/26", style: CustomTextStyles.bodyLargeBluegray50), CustomImageView(imagePath: ImageConstant.imgCalendar1, height: 20.adaptSize, width: 20.adaptSize)]))]); } 
/// Section Widget
Widget _buildFrame3(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("VCC", style: theme.textTheme.bodySmall), SizedBox(height: 3.v), CustomTextFormField(width: 120.h, controller: frameController1, hintText: "321", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildFrame4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildFrame2(context), _buildFrame3(context)]); } 
/// Section Widget
Widget _buildAHLIUNITEDBANK(BuildContext context) { return CustomTextFormField(controller: aHLIUNITEDBANKController, hintText: "AHLI UNITED BANK", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildFrame5(BuildContext context) { return CustomTextFormField(controller: frameController2, hintText: "EG6100030439550016431663000190", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildNBEGEGCX(BuildContext context) { return CustomTextFormField(controller: nBEGEGCXController, hintText: "NBEG EG CX439", contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildFrame6(BuildContext context) { return CustomTextFormField(controller: frameController3, hintText: "EG560003043950016431663000280", textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v)); } 
/// Section Widget
Widget _buildSaveChanges(BuildContext context) { return CustomElevatedButton(text: "Save Changes", buttonStyle: CustomButtonStyles.none, decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration, buttonTextStyle: CustomTextStyles.titleLargeMedium); } 
/// Section Widget
Widget _buildFrameThirtySix(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 44.v), decoration: AppDecoration.outlineOrange.copyWith(borderRadius: BorderRadiusStyle.customBorderTL20), child: _buildSaveChanges(context)); } 

/// Shows a modal bottom sheet with [BankDepositBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapImage(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>BankDepositBottomsheet(),isScrollControlled: true); } 
 }
