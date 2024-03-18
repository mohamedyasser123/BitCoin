import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class BuyOneScreen extends StatelessWidget {
  BuyOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController visaOneController = TextEditingController();

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
                  children: [
                    SizedBox(
                      width: 128.h,
                      child: Divider(),
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      "Choose Method",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 25.v),
                    CustomTextFormField(
                      controller: visaOneController,
                      hintText: "VISA",
                      hintStyle: CustomTextStyles.bodyLargeBluegray300,
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
                          imagePath: ImageConstant.imgVisa1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
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
                      hintText: "Mastercard",
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
