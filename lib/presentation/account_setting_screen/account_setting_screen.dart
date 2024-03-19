import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_icon_button.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: must_be_immutable
class AccountSettingScreen extends StatelessWidget {
  AccountSettingScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController copyOneController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                height: 730.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Stack(alignment: Alignment.topCenter, children: [

                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: appTheme.orange200,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder42),
                                        child: Container(
                                            height: 84.adaptSize,
                                            width: 84.adaptSize,
                                            decoration: AppDecoration.additional
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder42),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle2,
                                                      height: 80.adaptSize,
                                                      width: 80.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              40.h),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomIconButton(
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(4.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillBlueGray,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgBitcoinIconsEditOutline))
                                                ])))),
                                SizedBox(height: 6.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Mahmoud ElSaey",
                                        style: CustomTextStyles
                                            .headlineSmallRegular)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("mmsaey191096@btcle.btc",
                                        style: CustomTextStyles
                                            .bodySmallBluegray300)),
                                SizedBox(height: 21.v),
                                Text("Email", style: theme.textTheme.bodySmall),
                                SizedBox(height: 3.v),
                                _buildEmail(context),
                                SizedBox(height: 15.v),
                                Text("ID", style: theme.textTheme.bodySmall),
                                SizedBox(height: 3.v),
                                _buildCopyOne(context),
                                SizedBox(height: 15.v),
                                Text("Name", style: theme.textTheme.bodySmall),
                                SizedBox(height: 3.v),
                                _buildName(context),
                                SizedBox(height: 20.v),
                                _buildFrame(context),
                                SizedBox(height: 48.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapFrame(context);
                                        },
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(left: 120.h),
                                            padding: EdgeInsets.all(12.h),
                                            decoration: AppDecoration.fillGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      height: 32.adaptSize,
                                                      width: 32.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(6.h),
                                                      decoration: AppDecoration
                                                          .fillBlueGray
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder6),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgSettingsRed400,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize,
                                                          alignment: Alignment
                                                              .center)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 8.h,
                                                          bottom: 2.v),
                                                      child: Text(
                                                          "Delete Account",
                                                          style: CustomTextStyles
                                                              .titleLargeRed400)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowRight,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 4.v))
                                                ]))))
                              ])))
                ])),
            bottomNavigationBar: _buildFrameThirtyFive(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame41761,
            margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "Account Setting",
            margin: EdgeInsets.only(top: 53.v, bottom: 22.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "mahmoudelsaey95@gmailcom",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v));
  }

  /// Section Widget
  Widget _buildCopyOne(BuildContext context) {
    return CustomTextFormField(
        controller: copyOneController,
        hintText: "324587962103200478961407",
        suffix: Container(
            padding: EdgeInsets.all(8.h),
            margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
            decoration: BoxDecoration(
                color: appTheme.blueGray900,
                borderRadius: BorderRadius.circular(8.h)),
            child:CustomImageView(
             imagePath: ImageConstant.imgCopy1,
             height: 24.adaptSize,
             width: 24.adaptSize,
             onTap: () {
              // Copy the text from the text field to the clipboard
              Clipboard.setData(ClipboardData(text: copyOneController.text));
              // Optionally, you can show a toast or any other indication that the text has been copied
              ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text('Text copied to clipboard')),
              );
             },
            ),),
        suffixConstraints: BoxConstraints(maxHeight: 48.v));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Mahmoud ElSaey",
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.card
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("Identity Verification",
                  style: CustomTextStyles.bodyLargeBluegray50)),
          Padding(
              padding: EdgeInsets.only(top: 1.v, right: 20.h),
              child: Text("Unverified", style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "Save Changes",
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
        buttonTextStyle: CustomTextStyles.titleLargeMedium);
  }

  /// Section Widget
  Widget _buildFrameThirtyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 44.v),
        decoration: AppDecoration.outlineOrange
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child: _buildSaveChanges(context));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the deleteAccountScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.deleteAccountScreen);
  }
}
