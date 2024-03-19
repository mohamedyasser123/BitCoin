import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SecurityScreen extends StatelessWidget {
  SecurityScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            height: 822.v,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 26.v),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [

                                  _buildFrame(context)
                                ])))))));
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
            text: "Security", margin: EdgeInsets.only(top: 53.v, bottom: 22.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Enter your password",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgHidden,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController,
        hintText: "Enter your new password",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgHidden,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return CustomTextFormField(
        controller: newpasswordController1,
        hintText: "Enter your new password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgHidden,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSetANewPassword(BuildContext context) {
    return CustomElevatedButton(
        text: "Set a New Password",
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
        buttonTextStyle: CustomTextStyles.titleLargeMedium);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("Set your new password", style: theme.textTheme.titleLarge),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("Old Password", style: theme.textTheme.bodySmall)),
              SizedBox(height: 3.v),
              _buildPassword(context),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("New Password", style: theme.textTheme.bodySmall)),
              SizedBox(height: 3.v),
              _buildNewpassword(context),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Confirm New Password",
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 3.v),
              _buildNewpassword1(context),
              SizedBox(height: 48.v),
              _buildSetANewPassword(context)
            ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
