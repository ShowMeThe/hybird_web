import 'package:flutter/material.dart';

import 'CustomClipper.dart';


class CircularRevealAnimation extends StatelessWidget {
  final Alignment centerAlignment;
  final double minRadius;
  final double maxRadius;
  final Widget child;
  final Animation<double> animation;

  CircularRevealAnimation({
    @required this.child,
    @required this.animation,
    @required
    this.centerAlignment,
    this.minRadius,
    this.maxRadius,
  })  : assert(child != null),
        assert(animation != null);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget _) {
        return ClipPath(
          clipper: CircularRevealClipper(
            fraction: animation.value,
            centerAlignment: centerAlignment,
            minRadius: minRadius,
            maxRadius: maxRadius,
          ),
          child: this.child,
        );
      },
    );
  }
}