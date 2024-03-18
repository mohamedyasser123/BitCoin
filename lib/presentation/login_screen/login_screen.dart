import 'package:bitcoin/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

import '../import_wallet_page/import_wallet_tab_container_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,

                padding: EdgeInsets.symmetric(vertical: 44.v),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame41761,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          margin: EdgeInsets.only(left: 24.h),
                          onTap: () {
                            onTapImgImage(context);
                          }),
                      SizedBox(height: 78.v),
                      SizedBox(

                          height: 600.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBackgroundLight,
                                height: 461.v,
                                width: 428.h,
                                alignment: Alignment.bottomCenter),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroupGray600,
                                              height: 87.v,
                                              width: 300.h),
                                          SizedBox(height: 54.v),
                                          Text("Wallet Setup",
                                              style: theme
                                                  .textTheme.headlineSmall),
                                          SizedBox(height: 5.v),
                                          Container(
                                              width: 336.h,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 21.h),
                                              child: GestureDetector(
                                                onTap: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => ImportWalletTabContainerScreen()),
                                                  );
                                                },
                                                child: Text(
                                                    "Import an exiting wallet or create a new one.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .titleLargeChiqProGray600
                                                        .copyWith(height: 1.50)),
                                              )),
                                          SizedBox(height: 96.v),
                                          CustomElevatedButton(
                                              text: "Create a New Wallet",
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              decoration: CustomButtonStyles
                                                  .gradientPrimaryToBlueGrayDecoration,
                                              buttonTextStyle:
                                                  theme.textTheme.titleMedium!),
                                          SizedBox(height: 20.v),
                                          CustomElevatedButton(
                                              text:
                                                  "Import Using Secret Recovery Phrase",
                                              buttonStyle:
                                                  CustomButtonStyles.fillGray,
                                              buttonTextStyle:
                                                  theme.textTheme.titleMedium!,
                                              onPressed: () {
                                                onTapImportUsingSecretRecovery(
                                                    context);
                                              }),
                                          SizedBox(height: 80.v),
                                          Text(
                                              "By proceeding, you agree to these",
                                              style: CustomTextStyles
                                                  .titleLargeGray600),
                                          SizedBox(height: 10.v),
                                          Text("Terms & Conditions",
                                              style: CustomTextStyles
                                                  .titleLargeChiqPro
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ])))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the splashthreeScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashthreeScreen);
  }

  /// Navigates to the importWalletTabContainerScreen when the action is triggered.
  onTapImportUsingSecretRecovery(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.importWalletTabContainerScreen);
  }
}
