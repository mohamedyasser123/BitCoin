import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class TwentysixItemWidget extends StatelessWidget {
  const TwentysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 110.adaptSize,
        width: 110.adaptSize,
        decoration: BoxDecoration(
          color: appTheme.blueGray50,
          borderRadius: BorderRadius.circular(
            55.h,
          ),
        ),
      ),
    );
  }
}
