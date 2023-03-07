import 'package:alterra_movie/theme/alta_color.dart';
import 'package:flutter/material.dart';

import 'feature/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: AltaColor.yellowWaxPepper,
        primaryColorDark: AltaColor.yellowWaxPepper,
      ),
      home: const MainPage(),
    );
  }
}
