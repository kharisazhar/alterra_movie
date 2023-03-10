import 'package:flutter/material.dart';

class MoviePostItemWidget extends StatelessWidget {
  final String posterImageUrl;
  final GestureTapCallback? onTap;

  const MoviePostItemWidget(
      {Key? key, required this.posterImageUrl, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.network(
                posterImageUrl,
                fit: BoxFit.cover,
                width: 180,
              ),
            ),
            const SizedBox(height: 12.0),
            const Text('Thor: Love and thunder')
          ],
        ),
      ),
    );
  }
}
