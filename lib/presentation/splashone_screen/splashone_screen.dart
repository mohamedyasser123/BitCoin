import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SplashoneScreen extends StatelessWidget {
  const SplashoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle844,
                height: 424.v,
                width: 192.h,
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle844,
                height: 424.v,
                width: 178.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 5.v),
              ),
              _buildThree(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 160.v),
        padding: EdgeInsets.symmetric(
          horizontal: 64.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgBackgroundLight,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgRender1,
          height: 282.v,
          width: 300.h,
        ),
      ),
    );
  }
}
