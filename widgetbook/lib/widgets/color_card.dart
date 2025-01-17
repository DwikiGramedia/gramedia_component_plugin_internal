import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';
import 'package:widgetbook_workspace/widgets/color_tile.dart';

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmartlibText(title, style: SmartlibFont.h6),
        const SizedBox(height: SmartlibSpacing.s8),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: SmartlibSpacing.s8,
            crossAxisSpacing: SmartlibSpacing.s8,
            childAspectRatio: 8 / 2,
          ),
          children: children,
        ),
        const SizedBox(height: SmartlibSpacing.s20),
      ],
    );
  }
}
