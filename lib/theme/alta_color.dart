import 'package:flutter/material.dart';

class AltaColor {
  /// Color Palette Alta Movie
  static const MaterialColor orange = MaterialColor(_orangePrimaryValue,
      <int, Color>{500: Color(_orangePrimaryValue), 600: Color(0xffC97E3D)});

  /// Hex to Flutter Color :
  /// 0xff + HEXColor(E27E30)
  /// 0xffE27E30
  static const _orangePrimaryValue = 0xffE27E30;

  static const MaterialColor yellow =
      MaterialColor(_yellowPrimaryValue, <int, Color>{
    400: Color(0xffEDC547),
    500: Color(_yellowPrimaryValue),
  });

  static const _yellowPrimaryValue = 0xffE6C042;

  static const Color primaryBlack = Color(0xff1C1C26);
  static const Color white = Color(0xffEDEDEE);
  static const Color grey = Color(0xff8D8F97);
}
