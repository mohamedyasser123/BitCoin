import 'package:bitcoin/widgets/custom_outlined_button.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_checkbox_button.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SecretRecoveryPhraseScreen extends StatelessWidget {
  SecretRecoveryPhraseScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController venoController = TextEditingController();

  bool success = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildFrame(context),
              SizedBox(height: 28.v),
              SizedBox(
                height: 672.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 320.h,
                              margin: EdgeInsets.symmetric(horizontal: 30.h),
                              child: Text(
                                "Write down your Secret Recovery Phrase",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLargeChiqPro_1
                                    .copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 23.v),
                            Text(
                              "Select each word in order it was presented to you",
                              style: theme.textTheme.bodyLarge,
                            ),
                            SizedBox(height: 25.v),
                            _buildFrame1(context),
                            SizedBox(height: 30.v),
                            _buildSuccess(context),
                            SizedBox(height: 30.v),
                            _buildContinue(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 66.v),
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
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame41761,
            height: 44.adaptSize,
            width: 44.adaptSize,
            margin: EdgeInsets.only(top: 28.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 37.v,
              bottom: 6.v,
            ),
            child: Text(
              "Secret Recovery Phrase",
              style: CustomTextStyles.titleLargeMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMother(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Mother",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildSpeak(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Speak",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildLoremIn(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Lorem in",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildVenue(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Venue",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildWater(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Water",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildDrink(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Drink",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildVeno(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: CustomTextFormField(
        width: 148.h,
        controller: venoController,
        hintText: "In",
        hintStyle: CustomTextStyles.titleLargeBluegray300Medium,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 10.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL24,
      ),
    );
  }

  /// Section Widget
  Widget _buildVenue1(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Venue",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildLoremIn1(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Lorem in",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildMother1(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Mother",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildVeu(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Veu",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildLoremIn2(BuildContext context) {
    return CustomOutlinedButton(
      width: 148.h,
      text: "Lorem in",
      margin: EdgeInsets.only(left: 15.h),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "1.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildMother(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "2.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildSpeak(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "3.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildLoremIn(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "4.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildVenue(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "5.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildWater(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "6.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildDrink(context),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "1.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildVeno(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "2.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildVenue1(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "3.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildLoremIn1(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "4.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildMother1(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "5.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildVeu(context),
                  ],
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "6.",
                        style: CustomTextStyles.titleLargeBluegray300Medium,
                      ),
                    ),
                    _buildLoremIn2(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSuccess(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 130),
      child: CustomCheckboxButton(
        text: "Success",
        value: success,
        onChange: (value) {
          success = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}
