import 'package:flutter/material.dart';
import 'package:hybird_web/animation/CircularRevealAnimation.dart';

class AlphaRevealRouter extends PageRouteBuilder {
  final Widget widget;
  final Alignment centerAlignment;

  AlphaRevealRouter(this.widget, this.centerAlignment)
      : super(
            transitionDuration: Duration(milliseconds: 450),
            pageBuilder: (context, animation1, animation2) => widget,
            transitionsBuilder: (context, animation1, animation2, child) {
              CurvedAnimation alpha =
                  CurvedAnimation(parent: animation1, curve: Curves.easeInOut);
              return CircularRevealAnimation(
                  centerAlignment: centerAlignment,
                  child: FadeTransition(
                    child: child,
                    opacity: Tween(begin: 0.5, end: 1.0).animate(alpha),
                  ),
                  animation: animation1);
            });
}

class AlphaRouter extends PageRouteBuilder {
  final Widget widget;
  AlphaRouter(this.widget)
      : super(
      transitionDuration: Duration(milliseconds: 450),
      pageBuilder: (context, animation1, animation2) => widget,
      transitionsBuilder: (context, animation1, animation2, child) {
        CurvedAnimation alpha = CurvedAnimation(parent: animation1, curve: Curves.easeInOut);
        return FadeTransition(
          child: child,
          opacity: Tween(begin: 0.2, end: 1.0).animate(alpha),
        );
      });
}

class AlphaScaleRouter extends PageRouteBuilder {
  final Widget widget;
  AlphaScaleRouter(this.widget)
      : super(
            transitionDuration: Duration(milliseconds: 350),
            pageBuilder: (context, animation1, animation2) => widget,
            transitionsBuilder: (context, animation1, animation2, child) {
              CurvedAnimation alpha = CurvedAnimation(parent: animation1, curve: Curves.easeInOut);
              return ScaleTransition(
                scale: Tween(begin: 0.7, end: 1.0).animate(alpha),
                child: FadeTransition(
                  child: child,
                  opacity: Tween(begin: 0.2, end: 1.0).animate(alpha),
                ),
              );
            });
}
