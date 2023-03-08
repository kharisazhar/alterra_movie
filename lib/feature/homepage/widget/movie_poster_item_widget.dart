import 'package:flutter/material.dart';

class MoviePostItemWidget extends StatelessWidget {
  final String posterImageUrl;

  const MoviePostItemWidget({Key? key, required this.posterImageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
