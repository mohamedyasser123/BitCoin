import 'package:bitcoin/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class AddressesbookItemWidget extends StatelessWidget {
  const AddressesbookItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 43.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUsdt1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "USDT",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 5.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar312x12,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        radius: BorderRadius.circular(
                          1.h,
                        ),
                        margin: EdgeInsets.symmetric(vertical: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          right: 3.h,
                        ),
                        child: Text(
                          "Whitelist",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "1122457841303487.......",
                  style: CustomTextStyles.titleLargeGray600,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 27.v),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgDelete1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
