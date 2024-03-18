import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.primary,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildSpot(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpot(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Spot",
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                    SizedBox(height: 8.v),
                    _buildFrame1(
                      context,
                      gSTUSDT: "GST /USDT",
                      xCounter: "10 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgClose,
                      gSTUSDT: "GST /USDT",
                      xCounter: "8 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray80002,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray800,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray600,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgClose,
                      gSTUSDT: "GST /USDT",
                      xCounter: "3 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray80002,
                      gSTUSDT: "GST /USDT",
                      xCounter: "2 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame1(
                      context,
                      gSTUSDT: "GST /USDT",
                      xCounter: "10 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray600,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 2.v),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Futures",
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                    SizedBox(height: 11.v),
                    _buildFrame1(
                      context,
                      gSTUSDT: "GST /USDT",
                      xCounter: "10 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgClose,
                      gSTUSDT: "GST /USDT",
                      xCounter: "8 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray80002,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray800,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray600,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgClose,
                      gSTUSDT: "GST /USDT",
                      xCounter: "3 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray80002,
                      gSTUSDT: "GST /USDT",
                      xCounter: "2 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray800,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "-296.73%",
                    ),
                    SizedBox(height: 16.v),
                    _buildFrame(
                      context,
                      close: ImageConstant.imgCloseGray600,
                      gSTUSDT: "GST /USDT",
                      xCounter: "5 X",
                      ninetySixThousandFiveHundred: "0.096500",
                      twentyNineThousandSixHundredSe: "+296.73%",
                    ),
                    SizedBox(height: 4.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String close,
    required String gSTUSDT,
    required String xCounter,
    required String ninetySixThousandFiveHundred,
    required String twentyNineThousandSixHundredSe,
  }) {
    return SizedBox(
      width: 220.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: close,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 7.v,
              bottom: 6.v,
            ),
            child: Text(
              gSTUSDT,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          Container(
            width: 24.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 6.v,
              bottom: 4.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray80002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              xCounter,
              style: theme.textTheme.labelMedium!.copyWith(
                color: appTheme.blueGray50,
              ),
            ),
          ),
          Spacer(),
          Column(
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
                  twentyNineThousandSixHundredSe,
                  style: CustomTextStyles.labelMediumRed400.copyWith(
                    color: appTheme.red400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String gSTUSDT,
    required String xCounter,
    required String ninetySixThousandFiveHundred,
    required String twentyNineThousandSixHundredSe,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCloseGray600,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(top: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 7.v,
            bottom: 6.v,
          ),
          child: Text(
            gSTUSDT,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.blueGray50,
            ),
          ),
        ),
        Container(
          width: 30.h,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 6.v,
            bottom: 4.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillGray80002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Text(
            xCounter,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.blueGray50,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 29.h),
          child: Column(
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
                  twentyNineThousandSixHundredSe,
                  style: CustomTextStyles.labelMediumBlue600.copyWith(
                    color: appTheme.blue600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
