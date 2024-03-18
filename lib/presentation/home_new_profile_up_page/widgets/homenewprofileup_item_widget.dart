import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class HomenewprofileupItemWidget extends StatelessWidget {
  const HomenewprofileupItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame41553,
            height: 40.v,
            width: 89.h,
          ),
          SizedBox(height: 6.v),
          Text(
            "GST /USDT",
            style: CustomTextStyles.bodyLargeBluegray50,
          ),
          SizedBox(height: 2.v),
          Text(
            "63,705.20",
            style: CustomTextStyles.bodySmallGray600,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDropMenu1Red400,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "5.88%",
                  style: CustomTextStyles.labelLargeRed400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
