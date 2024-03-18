import 'package:flutter/material.dart';
import 'package:bitcoin/core/utils/size_utils.dart';
import 'package:bitcoin/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray50,
      );
  static get bodyLargeChiqProfff0f0f2 =>
      theme.textTheme.bodyLarge!.chiqPro.copyWith(
        color: Color(0XFFF0F0F2),
      );
  static get bodyLargeLightblue300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlue300,
      );
  static get bodyLargeRed400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red400,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeff70747e => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF70747E),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray30010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 10.fSize,
      );
  static get bodySmallChiqProBluegray300 =>
      theme.textTheme.bodySmall!.chiqPro.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallChiqProGray600 =>
      theme.textTheme.bodySmall!.chiqPro.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallChiqProLightblue300 =>
      theme.textTheme.bodySmall!.chiqPro.copyWith(
        color: appTheme.lightBlue300,
      );
  static get bodySmallChiqProRed400 =>
      theme.textTheme.bodySmall!.chiqPro.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallChiqProfff0f0f2 =>
      theme.textTheme.bodySmall!.chiqPro.copyWith(
        color: Color(0XFFF0F0F2),
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallOrange200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange200,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallWhiteA70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumChiqPro =>
      theme.textTheme.displayMedium!.chiqPro.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get labelLargeLightblue300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlue300,
      );
  static get labelLargeOrange200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orange200,
      );
  static get labelLargeRed400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400,
      );
  static get labelLargefff0f0f2 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFF0F0F2),
      );
  static get labelMediumBlue600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blue600,
      );
  static get labelMediumRed400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red400,
      );
  // Title text style
  static get titleLargeBluegray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleLargeBluegray300Medium =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeChiqPro => theme.textTheme.titleLarge!.chiqPro.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeChiqProGray600 =>
      theme.textTheme.titleLarge!.chiqPro.copyWith(
        color: appTheme.gray600,
      );
  static get titleLargeChiqPro_1 => theme.textTheme.titleLarge!.chiqPro;
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOrange200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange200,
      );
  static get titleLargeRed400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleMediumGreen300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green300,
      );
  static get titleMediumOrange200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.orange200,
      );
  static get titleMediumfff0f0f2 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFF0F0F2),
      );
}

extension on TextStyle {
  TextStyle get chiqPro {
    return copyWith(
      fontFamily: 'Chiq Pro',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
