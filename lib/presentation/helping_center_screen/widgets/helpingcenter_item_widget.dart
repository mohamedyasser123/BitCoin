import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class HelpingcenterItemWidget extends StatelessWidget {
  const HelpingcenterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Row(
              children: [
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(1.h),
                  decoration: AppDecoration.additional.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder17,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRectangle841,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "Mohamed Ali",
                    style: CustomTextStyles.titleLargeWhiteA700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 11.v),
            SizedBox(
              width: 344.h,
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris ornare faucibus platea. ",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeBluegray300.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "14 Feb, 2024",
                style: CustomTextStyles.bodySmallGray600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
