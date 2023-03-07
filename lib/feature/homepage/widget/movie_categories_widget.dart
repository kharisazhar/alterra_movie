import 'package:flutter/material.dart';

class MovieCategoriesWidget extends StatelessWidget {
  const MovieCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Badge(
                  padding: const EdgeInsets.all(4.0),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  label: const SizedBox(
                    width: 58,
                    child: Text(
                      ' Action ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            );
          }),
    );
  }
}
