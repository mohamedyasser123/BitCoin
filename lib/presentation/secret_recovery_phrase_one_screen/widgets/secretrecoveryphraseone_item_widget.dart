import 'package:bitcoin/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore: must_be_immutable
class SecretrecoveryphraseoneItemWidget extends StatelessWidget {
  const SecretrecoveryphraseoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomOutlinedButton(
        width: 84.h,
        text: "veno",
      ),
    );
  }
}
