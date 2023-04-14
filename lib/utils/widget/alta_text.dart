import 'package:flutter/material.dart';

import '../theme/alta_color.dart';

enum AltaTextStyle { none, headH1, headlineH2, headlineH3 }

class AltaText extends StatelessWidget {
  final String text;
  final BuildContext context;

  const AltaText({Key? key, required this.context, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? getAltaTextStyle() {
      switch (AltaTextStyle.none) {
        case AltaTextStyle.headH1:
          return const TextStyle(
            color: AltaColor.primaryBlack,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          );

        case AltaTextStyle.headlineH2:
          return const TextStyle(
            color: AltaColor.primaryBlack,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          );

        case AltaTextStyle.headlineH3:
          return const TextStyle(
            color: AltaColor.primaryBlack,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          );

        case AltaTextStyle.none:
          return Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AltaColor.white);
      }
    }

    return Text(text, style: getAltaTextStyle());
  }
}
