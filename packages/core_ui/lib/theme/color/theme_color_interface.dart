import 'dart:ui';

import 'package:flutter/material.dart';

abstract class IThemeColor {
  late Color backgroundColorPrimary;
  late Color backgroundColorSecondary;
  late Color textColor;
  late Color unselectedItem;
  late Color selectedItem;
}

class LightTheme implements IThemeColor{
  @override
  Color backgroundColorPrimary = Colors.white;

  @override
  Color backgroundColorSecondary = const Color.fromARGB(255, 232, 232, 232);

  @override
  Color selectedItem = const Color.fromARGB(255, 81, 91, 170);

  @override
  Color unselectedItem = const Color.fromARGB(255, 160, 160, 160);

  @override
  Color textColor = const Color.fromARGB(255, 84, 84, 84);

}

final lightTheme = LightTheme();
