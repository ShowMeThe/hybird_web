import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Px {

  static double _width = 0.0;
  static double _height = 0.0;

  static double getWidth()  => _width;
  static double getHeight() => _height;

  static double matchWidth(context) {
    _width = MediaQuery
        .of(context)
        .size
        .width;
    return _width;
  }

  static double matchHeight(context) {
    _height = MediaQuery
        .of(context)
        .size
        .height;
    return _height;
  }

  static int getListColumn() {
    if (_width > 500) {
      return 4;
    } else {
       return 2;
    }
  }

  static double getTitleHeight() {
    return _height * 0.2;
  }

  static double getCardHeight() {
    return _width / getListColumn() * 0.65;
  }

  static double getTitleSize() {
    return _height * 0.1;
  }

  static double getCardPaddingTop() {
    return getTitleHeight() * 1.5;
  }

  static double getCardRadius() {
    return getTitleHeight() * 0.2;
  }

  static double getImageCardRadius() {
    return getTitleHeight() * 0.10;
  }

  static double getImageCardTextSize() {
    return getTitleHeight() * 0.12;
  }

}
