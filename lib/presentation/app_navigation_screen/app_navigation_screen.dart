import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "SplashTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Preference",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.preferenceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Card",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Funds - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addFundsContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SplashOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Secret Recovery Phrase",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secretRecoveryPhraseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Limit",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.limitScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buy",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.buyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buy One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.buyOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VISA / Mastercard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.visaMastercardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VISA / Mastercard One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.visaMastercardOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bank Deposit One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bankDepositOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Secret Recovery Phrase One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secretRecoveryPhraseOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdrow",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trade",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.tradeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Technical Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.technicalSupportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transfer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Addresses Book",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addressesBookScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Helping Center",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpingCenterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Limit One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.limitOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Deposit with Bitcoin Limited",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.depositWithBitcoinLimitedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Security",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SplashThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashthreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Import Wallet - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.importWalletTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bill",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.billScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sell",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.sellScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wallet qr code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walletQrCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Secret Recovery Phrase Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secretRecoveryPhraseTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Secure Your Wallet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secureYourWalletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delete Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home / New Profile up - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.homeNewProfileUpTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About BTCLE",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutBtcleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Secure Your Wallet One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.secureYourWalletOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Deposit",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.depositScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Freeze",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.freezeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Card Management",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cardManagementScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createPasswordOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
