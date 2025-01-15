import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class SmartlibDotIndicator extends StatelessWidget {
  final Axis? direction;
  final double? sizeActive;
  final double? sizeInActive;
  final int currentIndex;
  final int length;
  final Function(int) onChanged;
  final double? spaceDot;
  final MainAxisAlignment? mainAxisAlignment;

  const SmartlibDotIndicator({
    super.key,
    this.direction = Axis.horizontal,
    this.sizeActive = 8,
    this.sizeInActive = 8,
    this.mainAxisAlignment,
    required this.currentIndex,
    required this.length,
    required this.onChanged,
    this.spaceDot,
  });

  Widget indicatorWidget(bool isSelected) {
    return AnimatedContainer(
      width: isSelected ? sizeActive : sizeInActive,
      height: isSelected ? sizeActive : sizeInActive,
      duration: const Duration(milliseconds: 500),
      decoration: isSelected
          ? BoxDecoration(
              color: GramediaColor.white.valueColor,
              border: Border.all(
                color: GramediaColor.neutral700.valueColor,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              shape: BoxShape.circle,
            )
          : BoxDecoration(
              color: GramediaColor.neutral700.valueColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        children: List.generate(
          length,
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: spaceDot ?? 4),
            child: GestureDetector(
              onTap: () {
                onChanged(index);
              },
              child: indicatorWidget(index == currentIndex),
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: spaceDot ?? 4),
          child: GestureDetector(
            onTap: () {
              onChanged(index);
            },
            child: indicatorWidget(index == currentIndex),
          ),
        ),
      ),
    );
  }
}
