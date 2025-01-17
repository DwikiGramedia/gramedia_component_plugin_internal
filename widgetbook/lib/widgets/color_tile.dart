import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/texts/text.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({
    super.key,
    required this.color,
    required this.colorName,
    this.darkText = true,
  });

  final Color color;
  final String colorName;
  final bool darkText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SmartlibSpacing.s8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(SmartlibRadius.r2XS),
        border: Border.all(color: SmartlibColors.neutral150),
      ),
      child: SmartlibText(
        colorName,
        style: SmartlibFont.body2XS.copyWith(
          color: darkText ? SmartlibColors.neutral700 : SmartlibColors.white,
        ),
      ),
    );
  }
}
