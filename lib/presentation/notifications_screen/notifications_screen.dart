import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'widgets/frame_item_widget.dart';
import 'widgets/twentysix_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 822.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Stack(alignment: Alignment.topLeft, children: [
                  _buildFrame(context),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 209.v),
                          child: Text("Old",
                              style: CustomTextStyles.titleMediumBluegray300))),
                  _buildTwentySix(context)
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
            text: "Notifications",
            margin: EdgeInsets.only(top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 10.v, right: 24.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New", style: CustomTextStyles.titleMediumOrange200),
                      SizedBox(height: 10.v),
                      Expanded(
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 12.v);
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return FrameItemWidget();
                              }))
                    ]))));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
   return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
     padding: EdgeInsets.only(left: 24.0, top: 110.0, right: 24.0), // Adjusted for a standard approach
     child: ListView.separated(
      physics: BouncingScrollPhysics(), // This allows for a scrollable list with a bounce effect on iOS
      shrinkWrap: true,
      separatorBuilder: (context, index) {
       return SizedBox(height: 1.0); // Adjusted for a standard approach
      },
      itemCount: 7,
      itemBuilder: (context, index) {
       return TwentysixItemWidget(); // Your custom list item widget
      },
     ),
    ),
   );
  }

  /// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen);
  }
}
