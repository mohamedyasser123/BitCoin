import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SecureYourWalletOneScreen extends StatelessWidget {
  const SecureYourWalletOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            children: [
              SizedBox(
                height: 634.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackgroundLight,
                      height: 461.v,
                      width: 428.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 345.h,
                                margin: EdgeInsets.symmetric(horizontal: 17.h),
                                child: Text(
                                  "Secure your wallet's secret recovery phrase.",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .titleLargeChiqProGray600
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Why is that important?",
                                style: CustomTextStyles.titleLargeOrange200,
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Text(
                              "Manual",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "Write down your secret recovery phrase on a pieces of paper and store in a safe place.",
                              style: CustomTextStyles.bodySmallChiqProGray600,
                            ),
                            SizedBox(height: 7.v),
                            Row(
                              children: [
                                Text(
                                  "Security Level",
                                  style: theme.textTheme.bodySmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "Very Strong",
                                    style: CustomTextStyles.labelLargeOrange200,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 21.v),
                            Text(
                              "Risk Are:",
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 5.v),
                            Container(
                              width: 170.h,
                              margin: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "You lose it\nyou forget where you put it\nsomeone else finds it",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallChiqProGray600
                                    .copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Other options doesn",
                                    style: CustomTextStyles.labelLargefff0f0f2,
                                  ),
                                  TextSpan(
                                    text: "'t have to be papered",
                                    style: CustomTextStyles
                                        .bodySmallChiqProfff0f0f2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 23.v),
                            Text(
                              "Tips:",
                              style: theme.textTheme.labelLarge,
                            ),
                            SizedBox(height: 4.v),
                            Container(
                              width: 184.h,
                              margin: EdgeInsets.only(left: 5.h),
                              child: Text(
                                "Store in bank vault\nStore in a safe\nStore in multiple secret places",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallChiqProGray600
                                    .copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 43.v),
                            CustomElevatedButton(
                              text: "Start",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToBlueGrayDecoration,
                              buttonTextStyle: theme.textTheme.titleMedium!,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: appTheme.orange200,
                    dotColor: appTheme.gray600,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
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
      title: AppbarTitle(
        text: "Secure Your Wallet",
        margin: EdgeInsets.only(
          left: 46.h,
          top: 51.v,
          bottom: 24.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
