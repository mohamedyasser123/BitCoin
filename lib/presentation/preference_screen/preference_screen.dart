import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 822.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Stack(alignment: Alignment.topCenter, children: [

                  _buildFrame4(context)
                ]))));
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
            text: "Preference",
            margin: EdgeInsets.only(top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildFrame(context, currency: "Language", uSD: "English"),
              SizedBox(height: 20.v),
              _buildFrame(context, currency: "Currency", uSD: "USD"),
              SizedBox(height: 20.v),
              Container(
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.card.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 7.h, top: 8.v, bottom: 9.v),
                            child: Text("Theme",
                                style: CustomTextStyles.bodyLargeBluegray50)),
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: appTheme.blueGray900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Container(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder20),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              height: 27.v,
                                              width: 23.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMobile,
                                                        height: 27.v,
                                                        width: 23.h,
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStar3,
                                                        height: 8.v,
                                                        width: 7.h,
                                                        radius: BorderRadius
                                                            .circular(1.h),
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin: EdgeInsets.only(
                                                            left: 7.h,
                                                            top: 6.v))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgStar1,
                                          height: 8.adaptSize,
                                          width: 8.adaptSize,
                                          radius: BorderRadius.circular(1.h),
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                              left: 1.h, top: 1.v)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgStar2,
                                          height: 7.v,
                                          width: 8.h,
                                          radius: BorderRadius.circular(1.h),
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(bottom: 6.v))
                                    ])))
                      ])),
              SizedBox(height: 20.v),
              _buildFrame(context, currency: "Change Basis", uSD: "Last 24h")
            ])));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String currency,
    required String uSD,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.card
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(currency,
                  style: CustomTextStyles.bodyLargeBluegray50
                      .copyWith(color: appTheme.blueGray50))),
          Padding(
              padding: EdgeInsets.only(top: 1.v, right: 20.h),
              child: Text(uSD,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.blueGray50)))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
