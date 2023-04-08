import 'package:alterra_movie/theme/alta_color.dart';
import 'package:flutter/material.dart';

class HomeHeadingWidget extends StatelessWidget {
  const HomeHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Joko 👋',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: AltaColor.grey)),
            const SizedBox(height: 4.0),
            Text(
              "Let's relax and watch a movie!",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/id/237/200/200'),
        )
      ],
    );
  }
}
