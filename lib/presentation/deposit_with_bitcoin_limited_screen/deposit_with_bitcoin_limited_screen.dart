import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class DepositWithBitcoinLimitedScreen extends StatelessWidget {
  DepositWithBitcoinLimitedScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController thumbsupController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController uSDTOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
                  "Buy BTCLE",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "Already have Crypto?",
                style: CustomTextStyles.bodyLargeBluegray50,
              ),
              SizedBox(height: 13.v),
              CustomTextFormField(
                controller: thumbsupController,
                hintText: "Deposit with BTCLE",
                hintStyle: CustomTextStyles.bodyLargeBluegray300,
                prefix: Container(
                  padding: EdgeInsets.all(4.h),
                  margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray900,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsup,
                    height: 12.v,
                    width: 11.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 13.v,
                  right: 30.h,
                  bottom: 13.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray90001,
              ),
              SizedBox(height: 27.v),
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
                controller: priceController,
                hintText: "BTCLE / ",
                hintStyle: CustomTextStyles.bodyLargeBluegray300,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 13.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                filled: true,
                fillColor: appTheme.gray90001,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildUSDTOne(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUSDTOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      child: CustomTextFormField(
        controller: uSDTOneController,
        hintText: "USDT",
        hintStyle: CustomTextStyles.bodyLargeBluegray300,
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12.h, 14.v, 8.h, 14.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray900,
            borderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgUsdt1,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 13.v,
          right: 30.h,
          bottom: 13.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray90001,
      ),
    );
  }
}
