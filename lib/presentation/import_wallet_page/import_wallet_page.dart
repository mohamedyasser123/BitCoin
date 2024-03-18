import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ImportWalletPage extends StatefulWidget {
  const ImportWalletPage({Key? key})
      : super(
          key: key,
        );

  @override
  ImportWalletPageState createState() => ImportWalletPageState();
}

class ImportWalletPageState extends State<ImportWalletPage>
    with AutomaticKeepAliveClientMixin<ImportWalletPage> {
  TextEditingController frameController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width:700,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.primary,
                child: Column(
                  children: [
                    SizedBox(height: 28.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Secret Recivery Phrase",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          _buildFrame(context),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "New Password",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          _buildNewpassword(context),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Confirm New Password",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          _buildNewpassword1(context),
                          SizedBox(height: 48.v),
                          _buildImport(context),
                          SizedBox(height: 42.v),
                          Text(
                            "By proceeding, you agree to these",
                            style: CustomTextStyles.titleLargeGray600,
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Terms & Conditions",
                            style: CustomTextStyles.titleLargeChiqPro.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return CustomTextFormField(
      controller: frameController,
      hintText: "Enter your secret recovery phrase",
      maxLines: 5,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
    );
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
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      obscureText: true,
    );
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
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildImport(BuildContext context) {
    return CustomElevatedButton(
      text: "Import",
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}
