import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL12 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillLightBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillRed => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToBlueGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(-0.11, -1),
          end: Alignment(1.08, 2),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray700,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueGrayTL15Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        gradient: LinearGradient(
          begin: Alignment(-0.11, -1),
          end: Alignment(1.08, 2),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray700,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGrayTL12 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray300,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.gray80002,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
