import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/buttons/buttons.dart';

class PapyrusIconButton extends PapyrusButton {
  const PapyrusIconButton({
    super.key,
    required super.label,
    super.backgroundColor,
    super.borderColor,
    super.isDisabled,
    super.isLoading,
    super.loadingColor,
    super.onTap,
    super.textColor,
    required super.icon,
  });

  const PapyrusIconButton.secondary({
    Key? key,
    required String label,
    required IconData icon,
    VoidCallback? onTap,
    bool isLoading = false,
  }) : super.secondary(
          key: key,
          label: label,
          icon: icon,
          onTap: onTap,
          isLoading: isLoading,
        );

  PapyrusIconButton.tertiery({
    Key? key,
    required String label,
    required IconData icon,
    VoidCallback? onTap,
    bool isLoading = false,
  }) : super.tertiery(
          key: key,
          label: label,
          icon: icon,
          onTap: onTap,
          isLoading: isLoading,
        );

  @override
  Widget build(BuildContext context) {
    return PapyrusButton(
      label: label,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      isDisabled: isDisabled,
      isLoading: isLoading,
      loadingColor: loadingColor,
      onTap: onTap,
      textColor: textColor,
      icon: icon,
    );
  }
}
