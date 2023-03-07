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

  final List<Widget> _widgetOptions = [
    const HomePage(),
    const TicketPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: AltaColor.yellowWaxPepper,
          onTap: _itemTapped,
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
