import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SecretRecoveryPhraseTwoScreen extends StatelessWidget {
  const SecretRecoveryPhraseTwoScreen({Key? key})
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
              SizedBox(
                height: 630.v,
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
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 24.v,
                              ),
                              decoration: AppDecoration.fillGreen.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder50,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmarkBlueGray50,
                                height: 46.v,
                                width: 51.h,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            Text(
                              "Congratulations",
                              style: CustomTextStyles.titleLargeChiqPro_1,
                            ),
                            SizedBox(height: 18.v),
                            Container(
                              width: 374.h,
                              margin: EdgeInsets.only(
                                left: 3.h,
                                right: 2.h,
                              ),
                              child: Text(
                                "You are successfully protected your wallet. Remember to keep your secret recovery phrase safe, it is your responsibility! ",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 19.v),
                            Text(
                              "Leaves yourself a hint?",
                              style: CustomTextStyles.titleLargeOrange200,
                            ),
                            SizedBox(height: 18.v),
                            Container(
                              width: 366.h,
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Text(
                                "Cryptowallet cannot recover your wallet shoud you lose it. You can find your secret recovery phrase in settings > security",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 34.v),
                            Text(
                              "Learn More",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 42.v),
                            CustomElevatedButton(
                              text: "Done",
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
              Spacer(),
              SizedBox(height: 16.v),
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
        text: "Secret Recovery Phrase",
        margin: EdgeInsets.only(
          left: 22.h,
          top: 53.v,
          bottom: 22.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
