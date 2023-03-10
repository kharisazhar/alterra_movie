import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePostItemWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String posterImageUrl;
  final String movieTitle;

  const MoviePostItemWidget(
      {Key? key,
      required this.posterImageUrl,
      this.onTap,
      required this.movieTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: CachedNetworkImage(
              imageUrl: posterImageUrl,
              fit: BoxFit.cover,
              width: 180,
            ),
          ),
          const SizedBox(height: 12.0),
          Text(movieTitle)
        ],
      ),
    );
  }
}
