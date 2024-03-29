import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TechnicalSupportScreen extends StatelessWidget {
  TechnicalSupportScreen({Key? key}) : super(key: key);

  TextEditingController solarcamerabrokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, right: 69.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgGroup1,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    margin: EdgeInsets.only(bottom: 110.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: _buildFrame(context,
                                        loremIpsumDolor:
                                            "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. ",
                                        time: "9:23 PM"))
                              ])),
                      SizedBox(height: 23.v),
                      _buildTwenty(context),
                      Spacer(),
                      SizedBox(height: 34.v),

                    ])),
            bottomNavigationBar: _buildFrame3(context)));
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
            text: "Technical Support",
            margin: EdgeInsets.only(top: 53.v, bottom: 22.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 155.v,
            width: 360.h,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.topRight,
                 ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrame(context,
                            loremIpsumDolor:
                                "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. ",
                            time: "9:23 PM"),
                        Container(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            margin: EdgeInsets.only(left: 8.h, bottom: 110.v),
                            padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.additional.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle837,
                                height: 34.adaptSize,
                                width: 34.adaptSize,
                                radius: BorderRadius.circular(17.h),
                                alignment: Alignment.center))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 46.v),
        decoration: AppDecoration.outlineOrange
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child: Container(
            decoration: AppDecoration.outlineOrange
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: CustomTextFormField(
                      controller: solarcamerabrokenController,
                      hintText: "Write Something ...",
                      hintStyle: CustomTextStyles.bodySmallBluegray300,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          padding: EdgeInsets.all(8.h),
                          margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
                          decoration: BoxDecoration(
                              color: appTheme.gray90001,
                              borderRadius: BorderRadius.circular(8.h)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSolarcamerabroken,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 48.v),
                      borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                      filled: true,
                      fillColor: appTheme.blueGray900)),
              CustomImageView(
                  imagePath: ImageConstant.imgFrame274,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  margin: EdgeInsets.only(left: 12.h))
            ])));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String loremIpsumDolor,
    required String time,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 244.h,
                  child: Text(loremIpsumDolor,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBluegray50
                          .copyWith(color: appTheme.blueGray50, height: 1.50))),
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(time,
                      style: CustomTextStyles.bodySmallBluegray30010
                          .copyWith(color: appTheme.blueGray300)))
            ]));
  }

  /// Navigates to the homeNewProfileUpTabContainerScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeNewProfileUpTabContainerScreen);
  }
}
