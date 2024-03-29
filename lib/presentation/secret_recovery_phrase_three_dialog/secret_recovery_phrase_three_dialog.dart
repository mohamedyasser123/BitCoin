import 'package:bitcoin/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class SecretRecoveryPhraseThreeDialog extends StatelessWidget {
  const SecretRecoveryPhraseThreeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380.h,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 16.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 60.adaptSize,
              width: 60.adaptSize),
          SizedBox(height: 27.v),
          Text("Tap to reveal your secret recovery phrase",
              style: CustomTextStyles.bodyLargeBluegray50),
          SizedBox(height: 21.v),
          Text("Make sure no one is watching your screen",
              style: theme.textTheme.bodyLarge),
          SizedBox(height: 25.v),
          CustomOutlinedButton(
              height: 40.v,
              width: 120.h,
              text: "View",
              buttonStyle: CustomButtonStyles.outlineBlueGrayTL12,
              buttonTextStyle: theme.textTheme.titleMedium!,
              onPressed: () {
                onTapView(context);
              })
        ]));
  }

  /// Navigates to the secretRecoveryPhraseOneScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.secretRecoveryPhraseOneScreen);
  }
}
