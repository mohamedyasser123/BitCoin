import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 32.v),
              _buildFrame1(context),
              SizedBox(height: 40.v),
              CustomImageView(
                imagePath: ImageConstant.imgBackgroundLight,
                height: 461.v,
                width: 428.h,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrame41761,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 44.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Bill Statement List",
        margin: EdgeInsets.only(
          top: 51.v,
          bottom: 24.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Text(
        "2024",
        style: theme.textTheme.bodySmall,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 47.v,
            width: 111.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "January",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Jan 31 - Feb 29",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
            child: Text(
              "-24.74",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.h, 15.v, 24.h, 10.v),
            child: Text(
              "USDT",
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
