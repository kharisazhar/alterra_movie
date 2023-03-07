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
          children: const [
            Text('Joko 👋'),
            SizedBox(height: 4.0),
            Text("Let's relax and watch a movie!"),
          ],
        ),
        const CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/id/237/200/200'),
        )
      ],
    );
  }
}
