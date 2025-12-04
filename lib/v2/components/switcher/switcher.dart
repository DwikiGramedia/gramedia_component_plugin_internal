import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/colors.dart';

class PapyrusSwitcher extends StatelessWidget {
  final Function(bool)? onChanged;
  final bool value;

  const PapyrusSwitcher({super.key, required this.value, this.onChanged});

  WidgetStateProperty<Icon?> get thumbIcon {
    return WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return Icon(Icons.check, color: PapyrusColors.neutral700);
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      thumbIcon: thumbIcon,

      // ✔ Updated for Flutter 3.38.3 (replaces deprecated activeColor/inactiveThumbColor)
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return PapyrusColors.neutral200;
        }
        return PapyrusColors.white;
      }),

      // Track color
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return PapyrusColors.neutral200;
        } else if (states.contains(WidgetState.selected)) {
          return PapyrusColors.neutral700;
        } else {
          return PapyrusColors.neutral500;
        }
      }),

      // Track border/outline
      trackOutlineColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return PapyrusColors.neutral200;
        } else if (states.contains(WidgetState.selected)) {
          return PapyrusColors.neutral700;
        } else {
          return PapyrusColors.neutral500;
        }
      }),
    );
  }
}
