import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'widgets/helpingcenter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class HelpingCenterScreen extends StatelessWidget {
  const HelpingCenterScreen({Key? key}) : super(key: key);

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

                  _buildHelpingCenter(context)
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
            text: "Helping Center",
            margin: EdgeInsets.only(top: 53.v, bottom: 22.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildHelpingCenter(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return HelpingcenterItemWidget();
                })));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
