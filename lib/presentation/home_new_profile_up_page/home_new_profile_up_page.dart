import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'widgets/homenewprofileup_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeNewProfileUpPage extends StatefulWidget {
  const HomeNewProfileUpPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeNewProfileUpPageState createState() => HomeNewProfileUpPageState();
}

class HomeNewProfileUpPageState extends State<HomeNewProfileUpPage>
    with AutomaticKeepAliveClientMixin<HomeNewProfileUpPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 23.h),
                    child: Row(
                      children: [
                        Text(
                          "Name",
                          style: theme.textTheme.bodySmall,
                        ),
                        Spacer(
                          flex: 79,
                        ),
                        Text(
                          "Price",
                          style: theme.textTheme.bodySmall,
                        ),
                        Spacer(
                          flex: 20,
                        ),
                        Text(
                          "Change",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 23.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseGray80002,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 8.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "GST /USDT",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 5.v,
                          ),
                          child: _buildFrame(
                            context,
                            ninetySixThousandFiveHundred: "0.096500",
                            price: " 0.09",
                          ),
                        ),
                        CustomElevatedButton(
                          height: 23.v,
                          width: 70.h,
                          text: "+296.73%",
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 8.v,
                            bottom: 8.v,
                          ),
                          buttonStyle: CustomButtonStyles.fillLightBlue,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(right: 23.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 8.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "GST /USDT",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 5.v,
                          ),
                          child: _buildFrame(
                            context,
                            ninetySixThousandFiveHundred: "0.096500",
                            price: " 0.09",
                          ),
                        ),
                        CustomElevatedButton(
                          height: 23.v,
                          width: 70.h,
                          text: "-36.01%",
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 8.v,
                            bottom: 8.v,
                          ),
                          buttonStyle: CustomButtonStyles.fillRed,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgCodiconFoldDown,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 180.h),
                  ),
                  SizedBox(height: 26.v),
                  Text(
                    "Trending",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    height: 138.v,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 12.h,
                        );
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return HomenewprofileupItemWidget();
                      },
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "Rewards Center",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 17.v),
                  Container(
                    margin: EdgeInsets.only(right: 23.h),
                    padding: EdgeInsets.all(12.h),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsOnprimary,
                          height: 79.v,
                          width: 100.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 8.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get 5 points today",
                                style: CustomTextStyles.bodyLargeBluegray50,
                              ),
                              SizedBox(height: 13.v),
                              CustomElevatedButton(
                                height: 31.v,
                                width: 120.h,
                                text: "Claim Now",
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientPrimaryToBlueGrayTL15Decoration,
                                buttonTextStyle:
                                    CustomTextStyles.bodyLargeBluegray50,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String ninetySixThousandFiveHundred,
    required String price,
  }) {
    return Column(
      children: [
        Text(
          ninetySixThousandFiveHundred,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray50,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            price,
            style: CustomTextStyles.bodySmallBluegray30010.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
      ],
    );
  }
}
