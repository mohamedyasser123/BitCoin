import 'package:bitcoin/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray80003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 68.v,
        width: 380.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillGray80003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Text(
                  "15, Dec 2023",
                  style: CustomTextStyles.bodySmallBluegray30010,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 1.v,
                    ),
                    child: CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUsdt1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 276.h,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Malesuada adipiscing eu et velit natoque mauris.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 42.h),
                              child: Text(
                                "04:22 PM",
                                style: CustomTextStyles.bodySmallBluegray30010,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
