import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class SLCheckbox extends StatelessWidget {
  const SLCheckbox({
    super.key,
    required this.isAgree,
    required this.description,
  });

  final ValueNotifier<bool> isAgree;
  final Widget description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isAgree.value,
          checkColor: GramediaColor.white.valueColor,
          activeColor: GramediaColor.neutral700.valueColor,
          onChanged: (value) => isAgree.value = value ?? false,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        const SizedBox(width: 6),
        Expanded(child: description)
      ],
    );
  }
}
