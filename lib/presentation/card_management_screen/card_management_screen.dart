import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class CardManagementScreen extends StatelessWidget {
  CardManagementScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bitcoiniconseditoutlineController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          height: 822.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBackgroundLight,
                height: 461.v,
                width: 428.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 5.v),
              ),
              _buildFrame(context),
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
      centerTitle: true,
      title: AppbarTitle(
        text: "Card Management",
        margin: EdgeInsets.only(
          top: 53.v,
          bottom: 22.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 36.v,
                        width: 123.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.v,
                          bottom: 11.v,
                        ),
                        child: Text(
                          "Personal",
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray600,
                          height: 8.v,
                          width: 56.h,
                          margin: EdgeInsets.only(
                            top: 7.v,
                            bottom: 6.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray600,
                          height: 8.v,
                          width: 56.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 7.v,
                            bottom: 6.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray600,
                          height: 8.v,
                          width: 56.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 7.v,
                            bottom: 6.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "4 7 2 1",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 11.v),
                        child: Text(
                          "MAHMOUD ABD ELLATIF",
                          style: CustomTextStyles.bodyLargeBluegray50,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EXP",
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "12/26",
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Text(
              "Card Tag",
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: 2.v),
            CustomTextFormField(
              controller: bitcoiniconseditoutlineController,
              hintText: "Personal",
              hintStyle: theme.textTheme.titleMedium!,
              textInputAction: TextInputAction.done,
              suffix: Container(
                padding: EdgeInsets.all(2.h),
                margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
                decoration: BoxDecoration(
                  color: appTheme.blueGray900,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgBitcoinIconsEditOutline,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.v,
              ),
            ),
            SizedBox(height: 44.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Card Delete",
                  style: CustomTextStyles.bodyLargeBluegray50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delete",
                      style: CustomTextStyles.bodyLargeRed400,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDelete1,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
