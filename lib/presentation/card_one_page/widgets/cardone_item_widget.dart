import 'package:bitcoin/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class CardoneItemWidget extends StatelessWidget {
  const CardoneItemWidget({Key? key})
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 179.h,
            margin: EdgeInsets.only(bottom: 1.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 13.v,
                    bottom: 11.v,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillBlueGrayTL12,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPajamasArrowRightLightBlue300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MME",
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "1122447256241.....",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 73.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    " 200",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Text(
                  "08 Feb, 2024",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
