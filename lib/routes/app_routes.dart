import 'package:flutter/material.dart';
import '../presentation/splashtwo_screen/splashtwo_screen.dart';
import '../presentation/preference_screen/preference_screen.dart';
import '../presentation/card_screen/card_screen.dart';
import '../presentation/add_funds_container_screen/add_funds_container_screen.dart';
import '../presentation/splashone_screen/splashone_screen.dart';
import '../presentation/secret_recovery_phrase_screen/secret_recovery_phrase_screen.dart';
import '../presentation/limit_screen/limit_screen.dart';
import '../presentation/buy_screen/buy_screen.dart';
import '../presentation/buy_one_screen/buy_one_screen.dart';
import '../presentation/visa_mastercard_screen/visa_mastercard_screen.dart';
import '../presentation/account_setting_screen/account_setting_screen.dart';
import '../presentation/visa_mastercard_one_screen/visa_mastercard_one_screen.dart';
import '../presentation/create_password_screen/create_password_screen.dart';
import '../presentation/bank_deposit_one_screen/bank_deposit_one_screen.dart';
import '../presentation/secret_recovery_phrase_one_screen/secret_recovery_phrase_one_screen.dart';
import '../presentation/withdrow_screen/withdrow_screen.dart';
import '../presentation/trade_screen/trade_screen.dart';
import '../presentation/technical_support_screen/technical_support_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/transfer_screen/transfer_screen.dart';
import '../presentation/addresses_book_screen/addresses_book_screen.dart';
import '../presentation/helping_center_screen/helping_center_screen.dart';
import '../presentation/limit_one_screen/limit_one_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/deposit_with_bitcoin_limited_screen/deposit_with_bitcoin_limited_screen.dart';
import '../presentation/security_screen/security_screen.dart';
import '../presentation/splashthree_screen/splashthree_screen.dart';
import '../presentation/import_wallet_page/import_wallet_tab_container_screen.dart';
import '../presentation/bill_screen/bill_screen.dart';
import '../presentation/sell_screen/sell_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/wallet_qr_code_screen/wallet_qr_code_screen.dart';
import '../presentation/search_tab_container_screen/search_tab_container_screen.dart';
import '../presentation/secret_recovery_phrase_two_screen/secret_recovery_phrase_two_screen.dart';
import '../presentation/secure_your_wallet_screen/secure_your_wallet_screen.dart';
import '../presentation/delete_account_screen/delete_account_screen.dart';
import '../presentation/home_new_profile_up_tab_container_screen/home_new_profile_up_tab_container_screen.dart';
import '../presentation/about_btcle_screen/about_btcle_screen.dart';
import '../presentation/secure_your_wallet_one_screen/secure_your_wallet_one_screen.dart';
import '../presentation/deposit_screen/deposit_screen.dart';
import '../presentation/freeze_screen/freeze_screen.dart';
import '../presentation/card_management_screen/card_management_screen.dart';
import '../presentation/create_password_one_screen/create_password_one_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashtwoScreen = '/splashtwo_screen';

  static const String preferenceScreen = '/preference_screen';

  static const String cardScreen = '/card_screen';

  static const String addFundsPage = '/add_funds_page';

  static const String addFundsContainerScreen = '/add_funds_container_screen';

  static const String splashoneScreen = '/splashone_screen';

  static const String secretRecoveryPhraseScreen =
      '/secret_recovery_phrase_screen';

  static const String limitScreen = '/limit_screen';

  static const String buyScreen = '/buy_screen';

  static const String buyOneScreen = '/buy_one_screen';

  static const String visaMastercardScreen = '/visa_mastercard_screen';

  static const String accountSettingScreen = '/account_setting_screen';

  static const String visaMastercardOneScreen = '/visa_mastercard_one_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String bankDepositOneScreen = '/bank_deposit_one_screen';

  static const String secretRecoveryPhraseOneScreen =
      '/secret_recovery_phrase_one_screen';

  static const String withdrowScreen = '/withdrow_screen';

  static const String tradeScreen = '/trade_screen';

  static const String technicalSupportScreen = '/technical_support_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String transferScreen = '/transfer_screen';

  static const String addressesBookScreen = '/addresses_book_screen';

  static const String helpingCenterScreen = '/helping_center_screen';

  static const String limitOneScreen = '/limit_one_screen';

  static const String marketPage = '/market_page';

  static const String profileScreen = '/profile_screen';

  static const String depositWithBitcoinLimitedScreen =
      '/deposit_with_bitcoin_limited_screen';

  static const String securityScreen = '/security_screen';

  static const String splashthreeScreen = '/splashthree_screen';

  static const String importWalletPage = '/import_wallet_page';

  static const String importWalletTabContainerScreen =
      '/import_wallet_tab_container_screen';

  static const String billScreen = '/bill_screen';

  static const String sellScreen = '/sell_screen';

  static const String loginScreen = '/login_screen';

  static const String walletQrCodeScreen = '/wallet_qr_code_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String walletPage = '/wallet_page';

  static const String secretRecoveryPhraseTwoScreen =
      '/secret_recovery_phrase_two_screen';

  static const String secureYourWalletScreen = '/secure_your_wallet_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String homeNewProfileUpPage = '/home_new_profile_up_page';

  static const String homeNewProfileUpTabContainerScreen =
      '/home_new_profile_up_tab_container_screen';

  static const String aboutBtcleScreen = '/about_btcle_screen';

  static const String secureYourWalletOneScreen =
      '/secure_your_wallet_one_screen';

  static const String depositScreen = '/deposit_screen';

  static const String freezeScreen = '/freeze_screen';

  static const String cardManagementScreen = '/card_management_screen';

  static const String createPasswordOneScreen = '/create_password_one_screen';

  static const String cardOnePage = '/card_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashtwoScreen: (context) => SplashtwoScreen(),
    preferenceScreen: (context) => PreferenceScreen(),
    cardScreen: (context) => CardScreen(),
    addFundsContainerScreen: (context) => AddFundsContainerScreen(),
    splashoneScreen: (context) => SplashoneScreen(),
    secretRecoveryPhraseScreen: (context) => SecretRecoveryPhraseScreen(),
    limitScreen: (context) => LimitScreen(),
    buyScreen: (context) => BuyScreen(),
    buyOneScreen: (context) => BuyOneScreen(),
    visaMastercardScreen: (context) => VisaMastercardScreen(),
    accountSettingScreen: (context) => AccountSettingScreen(),
    visaMastercardOneScreen: (context) => VisaMastercardOneScreen(),
    createPasswordScreen: (context) => CreatePasswordScreen(),
    bankDepositOneScreen: (context) => BankDepositOneScreen(),
    secretRecoveryPhraseOneScreen: (context) => SecretRecoveryPhraseOneScreen(),
    withdrowScreen: (context) => WithdrowScreen(),
    tradeScreen: (context) => TradeScreen(),
    technicalSupportScreen: (context) => TechnicalSupportScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    transferScreen: (context) => TransferScreen(),
    addressesBookScreen: (context) => AddressesBookScreen(),
    helpingCenterScreen: (context) => HelpingCenterScreen(),
    limitOneScreen: (context) => LimitOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    depositWithBitcoinLimitedScreen: (context) =>
        DepositWithBitcoinLimitedScreen(),
    securityScreen: (context) => SecurityScreen(),
    splashthreeScreen: (context) => SplashthreeScreen(),
    importWalletTabContainerScreen: (context) =>
        ImportWalletTabContainerScreen(),
    billScreen: (context) => BillScreen(),
    sellScreen: (context) => SellScreen(),
    loginScreen: (context) => LoginScreen(),
    walletQrCodeScreen: (context) => WalletQrCodeScreen(),
    searchTabContainerScreen: (context) => SearchTabContainerScreen(),
    secretRecoveryPhraseTwoScreen: (context) => SecretRecoveryPhraseTwoScreen(),
    secureYourWalletScreen: (context) => SecureYourWalletScreen(),
    deleteAccountScreen: (context) => DeleteAccountScreen(),
    homeNewProfileUpTabContainerScreen: (context) =>
        HomeNewProfileUpTabContainerScreen(),
    aboutBtcleScreen: (context) => AboutBtcleScreen(),
    secureYourWalletOneScreen: (context) => SecureYourWalletOneScreen(),
    depositScreen: (context) => DepositScreen(),
    freezeScreen: (context) => FreezeScreen(),
    cardManagementScreen: (context) => CardManagementScreen(),
    createPasswordOneScreen: (context) => CreatePasswordOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
