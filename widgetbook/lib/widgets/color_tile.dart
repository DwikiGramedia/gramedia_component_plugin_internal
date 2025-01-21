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
      padding: const EdgeInsets.all(PapyrusSpacing.s8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(PapyrusRadius.r2XS),
        border: Border.all(color: PapyrusColors.neutral150),
      ),
      child: PapyrusText(
        colorName,
        style: PapyrusFont.body2XS.copyWith(
          color: darkText ? PapyrusColors.neutral700 : PapyrusColors.white,
        ),
      ),
    );
  }
}
