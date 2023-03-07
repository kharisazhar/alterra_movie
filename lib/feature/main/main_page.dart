import 'package:alterra_movie/feature/homepage/home_page.dart';
import 'package:flutter/material.dart';

import '../../theme/alta_color.dart';
import '../favorite/favorite_page.dart';
import '../profile/profile_page.dart';
import '../ticket/ticket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _movieItemPages = [
    const HomePage(),
    const TicketPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        /// Supaya halaman berubah
        child: _movieItemPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

          /// Supaya Item Menu ter-implementasi
          currentIndex: _selectedIndex,
          selectedItemColor: AltaColor.yellowWaxPepper,
          onTap: (index) {
            debugPrint("ONTAP : ${index}");
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Movie',
              icon: Icon(Icons.movie),
            ),
            BottomNavigationBarItem(
              label: 'Ticket',
              icon: Icon(Icons.airplane_ticket_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
