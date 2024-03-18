import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blueGray900,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray600,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillBlueGrayTL24 => BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlueGrayTL27 => BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(27.h),
      );
  static BoxDecoration get fillBlueGrayTL12 => BoxDecoration(
        color: appTheme.blueGray900,
        borderRadius: BorderRadius.circular(12.h),
      );
}
