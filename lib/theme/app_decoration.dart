import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

class AppDecoration {
  // Additional decorations
  static BoxDecoration get additional => BoxDecoration(
        color: appTheme.orange200,
      );

  // Card decorations
  static BoxDecoration get card => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.2),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillGray80002 => BoxDecoration(
        color: appTheme.gray80002,
      );
  static BoxDecoration get fillGray80003 => BoxDecoration(
        color: appTheme.gray80003,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green300,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red400,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: appTheme.gray90001,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray80002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOrange => BoxDecoration(
        color: appTheme.gray90001,
        boxShadow: [
          BoxShadow(
            color: appTheme.orange200.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -16,
            ),
          ),
        ],
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              16,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(2.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    