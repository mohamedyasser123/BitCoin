import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';import 'package:bitcoin/widgets/app_bar/appbar_title.dart';import 'package:bitcoin/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:bitcoin/core/app_export.dart';
// ignore_for_file: must_be_immutable
class WithdrowScreen extends StatelessWidget {WithdrowScreen({Key? key}) : super(key: key);

TextEditingController amountController = TextEditingController();

TextEditingController dropmenuOneController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 32.v), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomTextFormField(controller: amountController, hintText: "BTCLE amount", suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 32.adaptSize, width: 32.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v))), SizedBox(height: 27.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Network", style: theme.textTheme.bodySmall))), SizedBox(height: 3.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomTextFormField(controller: dropmenuOneController, hintText: "Choose network", textInputAction: TextInputAction.done, suffix: Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.v), margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v), decoration: BoxDecoration(color: appTheme.blueGray900, borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgDropMenu1, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v))), SizedBox(height: 25.v), CustomImageView(imagePath: ImageConstant.imgBackgroundLight, height: 461.v, width: 428.h), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgFrame41761, margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "Withdrow", margin: EdgeInsets.only(top: 51.v, bottom: 24.v)), styleType: Style.bgFill); } 
/// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
onTapImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen); } 
 }
