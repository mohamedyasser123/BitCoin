import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_icon_button.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CreatePasswordScreen extends StatelessWidget {
  CreatePasswordScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.symmetric(vertical: 28.v),
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
        title: AppbarTitle(
            text: "Create Password",
            margin: EdgeInsets.only(left: 57.h, top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  width: 356.h,
                  margin: EdgeInsets.only(left: 11.h, right: 12.h),
                  child: Text(
                      "This Password will unlock your crypto wallet only on this device",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeChiqProGray600
                          .copyWith(height: 1.50))),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("New Password", style: theme.textTheme.bodySmall)),
              SizedBox(height: 3.v),
              CustomTextFormField(
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
                  obscureText: true),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text("Password Strength:",
                        style: CustomTextStyles.bodySmallGray600),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("Strong",
                            style: CustomTextStyles.bodySmallBluegray200))
                  ])),
              SizedBox(height: 9.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Confirm New Password",
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 3.v),
              CustomTextFormField(
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
                  obscureText: true),
              SizedBox(height: 3.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Must be at least 8 characters",
                      style: CustomTextStyles.bodySmallGray600)),
              SizedBox(height: 38.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 10.v),
                        child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillGray,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmark))),
                    Expanded(
                        child: Container(
                            width: 332.h,
                            margin: EdgeInsets.only(left: 11.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "I understand that crypto wallet cannot recover this password for me. ",
                                      style:
                                          CustomTextStyles.bodyLargeff70747e),
                                  TextSpan(
                                      text: "Learn More",
                                      style: CustomTextStyles
                                          .bodyLargeChiqProfff0f0f2
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))
                                ]),
                                textAlign: TextAlign.left)))
                  ]),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                  text: "Create Password",
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
                  buttonTextStyle: theme.textTheme.titleMedium!)
            ])));
  }

  /// Navigates to the createPasswordOneScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createPasswordOneScreen);
  }
}
