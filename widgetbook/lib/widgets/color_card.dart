import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/components/components.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

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
        PapyrusText(title, style: PapyrusFont.h6),
        const SizedBox(height: PapyrusSpacing.s8),
        GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: PapyrusSpacing.s8,
            crossAxisSpacing: PapyrusSpacing.s8,
            childAspectRatio: 8 / 2,
          ),
          children: children,
        ),
        const SizedBox(height: PapyrusSpacing.s20),
      ],
    );
  }
}
