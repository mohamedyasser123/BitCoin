import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

import '../splashthree_screen/splashthree_screen.dart';

class SplashtwoScreen extends StatefulWidget {
  const SplashtwoScreen({Key? key}) : super(key: key);

  @override
  _SplashtwoScreenState createState() => _SplashtwoScreenState();
}

class _SplashtwoScreenState extends State<SplashtwoScreen> {

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              PageView(
                controller: _pageController,
                children: [
                  // Add your splash screen pages here as widgets
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 28.0, bottom: 94.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 2, // Assuming you have 3 splash screens
                        effect: ScrollingDotsEffect(
                          activeDotColor: Color(0xffc5c093),
                          dotHeight: 8.0,
                          dotWidth: 8.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SplashthreeScreen()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 131.h), // Adjusted padding
                          child: Text("Next", style: CustomTextStyles.titleLargeMedium,),
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




  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLayer2,
                  height: 200.v,
                  width: 240.h),
              SizedBox(height: 24.v),
              Text("Private & Secure", style: theme.textTheme.headlineSmall),
              SizedBox(height: 7.v),
              SizedBox(
                  width: 367.h,
                  child: Text(
                      "This is a private and secure crypto wallet build on block-chain technology by expert coders",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleLargeChiqProGray600
                          .copyWith(height: 1.50)))
            ])));
  }

  /// Navigates to the splashthreeScreen when the action is triggered.

}
