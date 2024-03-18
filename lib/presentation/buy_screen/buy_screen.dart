import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class BuyScreen extends StatelessWidget {
  BuyScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bankOneController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 12.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 128.h,
                        child: Divider(),
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Buy Bitcoin Limited",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Text(
                      "Want to buy BTCLE?",
                      style: CustomTextStyles.bodyLargeBluegray50,
                    ),
                    Text(
                      "1 BTCLE = 1 ",
                      style: CustomTextStyles.bodySmallOrange200,
                    ),
                    SizedBox(height: 15.v),
                    CustomTextFormField(
                      controller: bankOneController,
                      hintText: "Bank Deposit",
                      hintStyle: CustomTextStyles.bodyLargeBluegray300,
                      prefix: Container(
                        padding: EdgeInsets.all(4.h),
                        margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray900,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBank1,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 52.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 15.v,
                        right: 30.h,
                        bottom: 15.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillGray,
                      filled: true,
                      fillColor: appTheme.gray90001,
                    ),
                    SizedBox(height: 12.v),
                    CustomTextFormField(
                      controller: settingsController,
                      hintText: "VIZA / Mastercard",
                      hintStyle: CustomTextStyles.bodyLargeBluegray300,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        padding: EdgeInsets.all(2.h),
                        margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray900,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 52.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        top: 15.v,
                        right: 30.h,
                        bottom: 15.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.fillGray,
                      filled: true,
                      fillColor: appTheme.gray90001,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
