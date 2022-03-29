import 'package:flutter/material.dart';

Color primaryColor = Colors.black;
Color secondaryColor = Color(0xffd32a34);
Color terColor = Color(0xff8a8a8a);
Map<int, Color> swatch = {
  50: secondaryColor.withOpacity(0.1),
  100: secondaryColor.withOpacity(0.2),
  200: secondaryColor.withOpacity(0.3),
  300: secondaryColor.withOpacity(0.4),
  400: secondaryColor.withOpacity(0.5),
  500: secondaryColor.withOpacity(0.6),
  600: secondaryColor.withOpacity(0.7),
  700: secondaryColor.withOpacity(0.8),
  800: secondaryColor.withOpacity(0.9),
  900: secondaryColor.withOpacity(1.0),
};
MaterialColor colorSwatch = MaterialColor(0xffd32a34, swatch);
