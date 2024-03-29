import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DeleteAccountScreen extends StatelessWidget {
  DeleteAccountScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

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
                            padding: EdgeInsets.symmetric(vertical: 32.v),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [

                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGroup4,
                                                    height: 246.v,
                                                    width: 280.h),
                                                SizedBox(height: 27.v),
                                                Container(
                                                    width: 340.h,
                                                    margin: EdgeInsets.only(
                                                        left: 19.h,
                                                        right: 20.h),
                                                    child: Text(
                                                        "To confirm the account deletion process, please enter your password",
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .bodyLarge!
                                                            .copyWith(
                                                                height: 1.50))),
                                                SizedBox(height: 19.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text("Password",
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                CustomTextFormField(
                                                    controller:
                                                        passwordController,
                                                    hintText:
                                                        "Enter your password",
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    textInputType: TextInputType
                                                        .visiblePassword,
                                                    suffix: Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                30.h,
                                                                12.v,
                                                                12.h,
                                                                12.v),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgHidden,
                                                            height:
                                                                24.adaptSize,
                                                            width:
                                                                24.adaptSize)),
                                                    suffixConstraints:
                                                        BoxConstraints(
                                                            maxHeight: 48.v),
                                                    obscureText: true),
                                                SizedBox(height: 48.v),
                                                CustomElevatedButton(
                                                    text: "Delete Account",
                                                    buttonStyle:
                                                        CustomButtonStyles.none,
                                                    decoration: CustomButtonStyles
                                                        .gradientPrimaryToBlueGrayDecoration,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleLargeMedium)
                                              ])))
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
            text: "Delete Account",
            margin: EdgeInsets.only(top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Navigates to the accountSettingScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountSettingScreen);
  }
}
