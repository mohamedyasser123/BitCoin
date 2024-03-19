import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class AboutBtcleScreen extends StatelessWidget {
  const AboutBtcleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildView(context),
                              SizedBox(height: 21.v),
                              _buildFrame(context),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text("FAQs",
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 4.v),
                              _buildSeventy(context)
                            ]))))));
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
            text: "About BTCLE",
            margin: EdgeInsets.only(top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 279.v,
            width: 404.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.bottomRight,
                 ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 27.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup1,
                            height: 50.adaptSize,
                            width: 50.adaptSize),
                        SizedBox(height: 8.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroupGray60043x120,
                            height: 43.v,
                            width: 120.h),
                        SizedBox(height: 4.v),
                        Text("App Version 1.1.12",
                            style: CustomTextStyles.bodySmallGray600),
                        SizedBox(height: 9.v),
                        SizedBox(
                            width: 376.h,
                            child: Text(
                                "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. Lorem ipsum dolor sit amet consectetur. ",
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLargeBluegray200
                                    .copyWith(height: 1.50)))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 160.v,
            width: 380.h,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle842,
                  height: 160.v,
                  width: 380.h,
                  radius: BorderRadius.circular(20.h),
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgVedio1,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  alignment: Alignment.center)
            ])));
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return SizedBox(
        height: 425.v,
        width: 404.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topLeft,
             ),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(left: 24.h, top: 74.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ExpansionTile(
                          title: Text(
                            "2- Lorem ipsum dolor sit amet ?",
                            style: CustomTextStyles.bodyLargeChiqProfff0f0f2,
                          ),
                          childrenPadding: EdgeInsets.only(left: 16.v, top: 16.h, bottom: 16.h, right: 16.v),
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.v, right: 16.v),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(
                                          "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. Lorem ipsum dolor sit amet consectetur.",
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50))
                                  ),

                                ],
                              ),
                            ),
                            // Add more Padding widgets for additional FAQs or any other content as needed.
                          ],
                          iconColor: Colors.grey,
                          textColor: Colors.black,
                          collapsedTextColor: Colors.grey,
                        )]))),
          SizedBox()
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
