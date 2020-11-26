import 'dart:math';
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

  static double getTitleHeight() {
    return min(_height, _width) * 0.18;
  }


  static double getTitleSize() {
    return min(_height, _width) * 0.09;
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
    return getTitleSize() * 0.50;
  }

  static double getCardExtent() {
    if(getWidth() >= 1152){
      return getWidth() / 4;
    } if(getWidth() >= 765 && getWidth() < 1152){
      return getWidth() / 3;
    }else {
      return getWidth() / 2;
    }
  }


}
