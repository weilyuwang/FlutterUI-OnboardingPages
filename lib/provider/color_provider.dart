import 'package:flutter/material.dart';
import 'package:onboarding/screens/onboarding/data/onboard_page_data.dart';

class ColorProvider with ChangeNotifier {
  Color _color = onboardData[0].accentColor; //default color

  Color get color => _color;

  set color(Color color) {
    _color = color;
    notifyListeners();
  }
}
