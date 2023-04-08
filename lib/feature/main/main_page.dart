import 'package:alterra_movie/feature/homepage/view/home_main.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../theme/alta_color.dart';
import '../../theme/icon/alta_icon_movie_icons.dart';
import '../favorite/favorite_page.dart';
import '../profile/profile_page.dart';
import '../ticket/ticket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// _selectedIndex : private variable menggunakan underscore _
  int _selectedIndex = 0;

  final List<Widget> _movieItemPages = [
    const HomeMain(),
    const TicketPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AltaColor.primaryBlack,
        body: SafeArea(
          /// Supaya halaman berubah
          child: _movieItemPages.elementAt(_selectedIndex),
        ),

        /// Supaya Item Menu ter-implementasi
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
          child: GNav(
            gap: 12,
            tabBackgroundColor: AltaColor.orange,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              debugPrint("ONTAP : $index");
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              // GButton(
              //     leading: SizedBox(
              //       width: 24,
              //       height: 24,
              //       child: Image.asset('assets/icons/icon_movie.png'),
              //     ),
              //     text: 'Movie',
              //     icon: Icons.abc_rounded),
              GButton(
                icon: AltaIconMovie.icon_movie,
                text: 'Movie',
              ),
              GButton(icon: Icons.airplane_ticket_rounded, text: 'Ticket'),
              GButton(icon: Icons.bookmark, text: 'Favorite'),
              GButton(icon: Icons.person, text: 'Profile')
            ],
          ),
        ));
  }
}
