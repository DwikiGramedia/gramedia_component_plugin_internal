import 'package:flutter/material.dart';

import '../../foundation/colors.dart';

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
          checkColor: SmartlibColors.white,
          activeColor: SmartlibColors.neutral700,
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
