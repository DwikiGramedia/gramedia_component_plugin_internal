import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/v2/components/buttons/buttons.dart';

import '../../foundation/colors.dart';

class PapyrusIconButton extends PapyrusButton {
  const PapyrusIconButton({
    super.key,
    super.backgroundColor,
    super.borderColor,
    super.isDisabled,
    super.isLoading,
    super.loadingColor,
    super.onTap,
    super.textColor,
    required super.icon,
    super.iconSize,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  factory PapyrusIconButton.secondary({
    Key? key,
    required IconData icon,
    double iconSize = 20,
    VoidCallback? onTap,
    bool isLoading = false,
    required double width,
    required double height,
    bool isDisabled = false,
  }) =>
      PapyrusIconButton(
        icon: icon,
        width: width,
        onTap: onTap,
        isLoading: isLoading,
        isDisabled: isDisabled,
        height: height,
        iconSize: iconSize,
        loadingColor: PapyrusColors.brand500,
        textColor: PapyrusColors.neutral700,
        borderColor: PapyrusColors.neutral150,
        backgroundColor: PapyrusColors.white,
      );

  factory PapyrusIconButton.tertiery({
    Key? key,
    required IconData icon,
    double iconSize = 20,
    VoidCallback? onTap,
    bool isLoading = false,
    required double width,
    required double height,
    bool isDisabled = false,
  }) =>
      PapyrusIconButton(
        icon: icon,
        width: width,
        onTap: onTap,
        isLoading: isLoading,
        isDisabled: isDisabled,
        height: height,
        iconSize: iconSize,
        loadingColor: PapyrusColors.brand500,
        backgroundColor: PapyrusColors.white,
        textColor: PapyrusColors.neutral700,
        borderColor: PapyrusColors.white.withOpacity(0),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: height,
        minHeight: height,
        maxWidth: width,
        minWidth: width,
      ),
      child: PapyrusButton(
        label: label,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        isDisabled: isDisabled,
        isLoading: isLoading,
        loadingColor: loadingColor,
        onTap: onTap,
        textColor: textColor,
        icon: icon,
        iconSize: iconSize,
        borderRadius: BorderRadius.circular(1000),
      ),
    );
  }
}
