import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:bitcoin/core/app_export.dart'; // Ensure this import path matches your project's structure.

// Assuming CustomImageView, ImageConstant, CustomTextStyles, SizeUtils, etc., are defined elsewhere in your project.

class SplashthreeScreen extends StatefulWidget {
  SplashthreeScreen({Key? key}) : super(key: key);

  @override
  _SplashthreeScreenState createState() => _SplashthreeScreenState();
}

class _SplashthreeScreenState extends State<SplashthreeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height, // Assuming SizeUtils is defined in your project.
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              PageView(
                controller: _pageController,
                children: [
                  // Example content for your pages
                  // Make sure CustomImageView and ImageConstant are defined and implemented in your project.
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle844,
                    height: 424.v,
                    width: 192.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBackgroundLight,
                    height: 461.v,
                    width: 428.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 28.h, bottom: 94.v), // Ensure h and v are defined or replace with actual values.
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 2,
                        effect: ScrollingDotsEffect(
                          activeDotColor:Color(0xffc5c093),
                          dotHeight: 8.v, // Ensure v is defined or replace with an actual value.
                          dotWidth: 8.v, // Ensure v is defined or replace with an actual value.
                        ),
                      ),
                      GestureDetector(
                        onTap: () => onTapTxtNext(context),
                        child: Padding(
                          padding: EdgeInsets.only(left: 131.h), // Ensure h is defined or replace with actual value.
                          child: Text(
                            "Next",
                            style: CustomTextStyles.titleLargeMedium, // Make sure CustomTextStyles is defined in your project.
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildFrame(context),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup253,
                  height: 230.v,
                  width: 240.h),
              SizedBox(height: 24.v),
              Text("All Assets In One Place",
                  style: theme.textTheme.headlineSmall),
              SizedBox(height: 7.v),
              SizedBox(
                  width: 380.h,
                  child: Text(
                      "Find your all crypto currency assets as a one ver secured place. track it easily",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeChiqProGray600
                          .copyWith(height: 1.50)))
            ])));
  }

  void onTapTxtNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen); // Make sure AppRoutes is defined and 'loginScreen' route is correctly configured in your navigation setup.
  }
}