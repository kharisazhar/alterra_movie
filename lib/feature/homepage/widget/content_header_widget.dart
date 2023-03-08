import 'package:flutter/material.dart';

import '../../../theme/alta_color.dart';

class ContentHeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ContentHeaderWidget(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: AltaColor.white)),
        TextButton(
            style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap)
                .copyWith(
                    foregroundColor:
                        MaterialStatePropertyAll(AltaColor.orange.shade600)),
            onPressed: onPressed,
            child: const Text('View all'))
      ],
    );
  }
}
