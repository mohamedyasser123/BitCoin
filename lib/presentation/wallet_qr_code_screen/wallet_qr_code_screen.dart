import 'package:qr_flutter/qr_flutter.dart';
import 'package:bitcoin/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class WalletQrCodeScreen extends StatelessWidget {
  const WalletQrCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 272.h,
          margin: EdgeInsets.only(right: 92.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 154.h,
                child: Divider(
                  endIndent: 26.h,
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(right: 30.h),
                child: Text(
                  "Scan Qr code",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 23.v),
              QrImageView(
                data: 'https://www.google.com',
                size: 180.adaptSize,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrame(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 32.h,
        right: 165.h,
        bottom: 53.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "324587962103200478961407",
            style: CustomTextStyles.bodyLargeBluegray50,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      backgroundColor: appTheme.blueGray900,
      decoration: FloatingButtonStyleHelper.fillBlueGrayTL8,
      child: CustomImageView(
        imagePath: ImageConstant.imgCopy1,
        height: 20.0.v,
        width: 20.0.h,
      ),
    );
  }
}
