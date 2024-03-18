import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class LimitOneScreen extends StatelessWidget {
  LimitOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController typcndeleteoutlineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 128.h,
                child: Divider(),
              ),
              SizedBox(height: 24.v),
              Text(
                "Limit",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 20.v),
              Text(
                "Single Transaction limit(USD)",
                style: CustomTextStyles.bodyLargeBluegray300,
              ),
              SizedBox(height: 25.v),
              CustomTextFormField(
                controller: typcndeleteoutlineController,
                hintText: "0.00",
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTypcndeleteoutline,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
              ),
              SizedBox(height: 27.v),
              _buildFrame(context),
              SizedBox(height: 7.v),
              _buildFrame1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirm(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "0.0",
          style: CustomTextStyles.bodySmallGray600,
        ),
        Text(
          "100000.0",
          style: CustomTextStyles.bodySmallGray600,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 3.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 380.h,
              child: Divider(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(-0.11, -1.54),
                  end: Alignment(1.08, 2.67),
                  colors: [
                    theme.colorScheme.primary,
                    appTheme.gray90002,
                    appTheme.blueGray700,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(left: 18.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray600,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 1.adaptSize,
              width: 1.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray600,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirm",
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
