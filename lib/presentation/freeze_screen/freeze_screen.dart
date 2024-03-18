import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class FreezeScreen extends StatelessWidget {
  const FreezeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 128.h,
                child: Divider(),
              ),
              SizedBox(height: 25.v),
              Text(
                "Freeze",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.v),
              SizedBox(
                height: 200.adaptSize,
                width: 200.adaptSize,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 200.adaptSize,
                        width: 200.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.gray90001,
                          borderRadius: BorderRadius.circular(
                            100.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 152.v,
                        width: 166.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray900,
                              height: 146.v,
                              width: 163.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 82.v,
                                width: 132.h,
                                margin: EdgeInsets.only(top: 23.v),
                                decoration: BoxDecoration(
                                  color: appTheme.gray50001,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(15.h),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorGray800,
                              height: 82.v,
                              width: 66.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 23.v,
                                right: 33.h,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray400,
                              height: 27.v,
                              width: 132.h,
                              alignment: Alignment.topLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray90001,
                              height: 27.v,
                              width: 66.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 33.h),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 23.v),
                                child: Container(
                                  height: 11.v,
                                  width: 132.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray50,
                                  ),
                                  child: ClipRRect(
                                    child: LinearProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: appTheme.blueGray50,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.gray600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray200,
                              height: 58.adaptSize,
                              width: 58.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 36.h,
                                top: 39.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorGray600,
                              height: 58.v,
                              width: 29.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 39.v),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Text(
                "Once the one-key card lock function is enabled, you will not be able to use this card, but it will not affect other cards. If you want to cancel the one-key card lock function, you can enable it here again ",
                style: CustomTextStyles.bodyLargeBluegray300,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildFreeze(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFreeze(BuildContext context) {
    return CustomElevatedButton(
      text: "Freeze",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToBlueGrayDecoration,
      buttonTextStyle: CustomTextStyles.titleLargeMedium,
    );
  }
}
