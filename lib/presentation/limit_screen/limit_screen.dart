import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class LimitScreen extends StatelessWidget {
  const LimitScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 128.h,
                child: Divider(),
              ),
              SizedBox(height: 32.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroupBlueGray90001,
                height: 200.v,
                width: 134.h,
              ),
              SizedBox(height: 26.v),
              Text(
                "Your Transaction had done Successfully",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirm(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirm",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
      buttonTextStyle: CustomTextStyles.titleLargeMedium,
    );
  }
}
