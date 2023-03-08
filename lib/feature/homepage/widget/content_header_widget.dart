import 'package:flutter/material.dart';

import '../../../theme/alta_color.dart';

class ContentHeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ContentHeaderWidget({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        TextButton(
            style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap)
                .copyWith(
                    foregroundColor:
                        const MaterialStatePropertyAll(AltaColor.orange)),
            onPressed: onPressed,
            child: const Text('View all'))
      ],
    );
  }
}
