import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'widgets/secretrecoveryphraseone_item_widget.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SecretRecoveryPhraseOneScreen extends StatelessWidget {
  const SecretRecoveryPhraseOneScreen({Key? key})
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
              Container(
                width: 320.h,
                margin: EdgeInsets.symmetric(horizontal: 54.h),
                child: Text(
                  "Write down your Secret Recovery Phrase",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeChiqPro_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Container(
                width: 377.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 26.h,
                ),
                child: Text(
                  "This is your secret recovery phrase. Write it down on a paper and keep it is a safe place. You will be asked to re-enter this phrase (in order) on the next step.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              _buildSecretRecoveryPhraseOne(context),
              SizedBox(height: 48.v),
              _buildContinue(context),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 110.adaptSize,
                  width: 110.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray50,
                    borderRadius: BorderRadius.circular(
                      55.h,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 20.v),
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

  /// Section Widget
  Widget _buildSecretRecoveryPhraseOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 44.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 49.v,
            crossAxisCount: 4,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 12,
          itemBuilder: (context, index) {
            return SecretrecoveryphraseoneItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}
