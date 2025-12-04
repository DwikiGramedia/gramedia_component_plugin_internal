import 'package:flutter/material.dart';

class PanelAnimation<T> extends StatelessWidget {
  const PanelAnimation({
    super.key,
    required this.offset,
    required this.width,
    required this.height,
    required this.hasTouch,
    required this.duration,
    required this.curve,
    this.decoration,
  });

  final double offset;
  final double? width;
  final double? height;
  final Duration duration;
  final Curve curve;
  final bool hasTouch;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    final currentOffset = isRtl ? offset * -1 : offset;
    return AnimatedContainer(
      transform: Matrix4.translationValues(currentOffset, 0, 0),
      duration: duration,
      curve: curve,
      width: width,
      height: height,
      decoration: decoration,
    );
  }
}
