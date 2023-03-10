import 'package:alterra_movie/theme/alta_color.dart';
import 'package:flutter/material.dart';

import '../homepage/widget/movie_categories/movie_category_item.dart';

class DetailMoviePage extends StatelessWidget {
  final String imagePoster;

  const DetailMoviePage({Key? key, required this.imagePoster})
      : super(key: key);

  final String movieDescription =
      "Thor: Love and Thunder is a 2022 American superhero film based on Marvel Comics featuring the character Thor. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to Thor: Ragnarok (2017) and the 29th film in the Marvel Cinematic Universe (MCU). The film was directed by Taika Waititi, who co-wrote the screenplay with Jennifer Kaytin Robinson, and stars Chris Hemsworth as Thor alongside Christian Bale, Tessa Thompson, Jaimie Alexander, Waititi, Russell Crowe, and Natalie Portman. In the film, Thor attempts to find inner peace, but must return to action and recruit Valkyrie (Thompson), Korg (Waititi), and Jane Foster (Portman)—who is now the Mighty Thor—to stop Gorr the God Butcher (Bale) from eliminating all gods.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          /// Kalau di homepage navigator Push
          Navigator.pop(context);

          /// Kalau di homepage PushReplacement
          // Navigator.of(context).pushReplacement(
          //     MaterialPageRoute(builder: (_) => const MainPage()));

          return false;
        },
        child: NestedScrollView(
          floatHeaderSlivers: true,

          /// Header = AppBar
          headerSliverBuilder:
              (BuildContext headerContext, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                leading: IconButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 22),
                    onPressed: () {
                      /// Kalau di homepage navigator Push
                      Navigator.pop(context);

                      /// Kalau di homepage PushReplacement
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (_) => const MainPage()));
                    },
                    icon: const Icon(Icons.close)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 22),
                    child: IconButton(
                      onPressed: () {
                        debugPrint("HIT ME");
                      },
                      icon: const Icon(Icons.bookmark),
                    ),
                  )
                ],
                floating: true,
                expandedHeight: MediaQuery.of(context).size.height / 1.6,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace: FlexibleSpaceBar(
                  /// TODO : Video Player
                  ///
                  background: Image.network(
                    imagePoster,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              )
            ];
          },
          body: Container(
            color: AltaColor.primaryBlack,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Chip(
                      backgroundColor: AltaColor.yellow.shade500,
                      label: Text(
                        'IMDB 6.8',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: AltaColor.primaryBlack),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const Icon(
                      Icons.star_rounded,
                      color: AltaColor.yellow,
                    ),
                    Text(
                      '4.8',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: AltaColor.yellow),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      '(118k reviews)',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: AltaColor.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text('Thor: Love & Thunder',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AltaColor.white)),
                const SizedBox(
                  height: 22.0,
                ),
                SizedBox(
                  height: 38,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const MovieCategoryItem();
                      }),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Flexible(
                  flex: 2,
                  child: Text(movieDescription,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AltaColor.white.withOpacity(0.6),
                          height: 1.5)),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: FloatingActionButton.extended(
            backgroundColor: AltaColor.orange,
            onPressed: () {},
            label: Text(
              'Get Reservation',
              style: Theme.of(context).textTheme.titleMedium,
            )),
      ),
    );
  }
}
