import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusButton extends StatelessWidget {
  const PapyrusButton({
    super.key,
    this.label,
    this.onTap,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.loadingColor,
    this.isDisabled = false,
    this.icon,
    this.customIcon,
    this.iconSize = 20,
    this.borderRadius,
    this.isFullWidth = true,
    this.height = 44,
  });

  final VoidCallback? onTap;
  final String? label;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? loadingColor;
  final bool isDisabled;
  final IconData? icon;
  final Widget? customIcon;
  final double iconSize;
  final BorderRadius? borderRadius;
  final bool isFullWidth;
  final double height;

  const PapyrusButton.secondary({
    Key? key,
    required String? label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
    IconData? icon,
    Widget? customIcon,
    double iconSize = 20,
    BorderRadius? borderRadius,
    bool isFullWidth = true,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: PapyrusColors.brand500,
          backgroundColor: PapyrusColors.white,
          textColor: PapyrusColors.neutral700,
          borderColor: PapyrusColors.neutral150,
          isDisabled: isDisabled,
          icon: icon,
          customIcon: customIcon,
          iconSize: iconSize,
          borderRadius: borderRadius,
          isFullWidth: isFullWidth,
        );

  PapyrusButton.tertiery({
    Key? key,
    required String? label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
    IconData? icon,
    Widget? customIcon,
    double iconSize = 20,
    BorderRadius? borderRadius,
    bool isFullWidth = true,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: PapyrusColors.brand500,
          backgroundColor: PapyrusColors.white,
          textColor: PapyrusColors.neutral700,
          borderColor: PapyrusColors.white.withAlpha(0),
          isDisabled: isDisabled,
          icon: icon,
          customIcon: customIcon,
          iconSize: iconSize,
          borderRadius: borderRadius,
          isFullWidth: isFullWidth,
        );

  @override
  Widget build(BuildContext context) {
    var isDisabled = this.isDisabled || onTap == null;
    var buttonColor = isDisabled && backgroundColor != PapyrusColors.white
        ? PapyrusColors.neutral200
        : backgroundColor ?? PapyrusColors.brand500;

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: height,
      child: TextButton(
        onPressed: isLoading || isDisabled ? null : onTap,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
            side: BorderSide(color: borderColor ?? buttonColor),
          ),
          padding: isFullWidth
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: loadingColor ?? PapyrusColors.white,
                  strokeWidth: 2,
                ),
              )
            : Row(
                mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      size: iconSize,
                      color: isDisabled && textColor != null
                          ? PapyrusColors.neutral200
                          : textColor ?? PapyrusColors.white,
                    ),
                  if (customIcon != null)
                    SizedBox(
                      height: iconSize,
                      width: iconSize,
                      child: customIcon!,
                    ),
                  if (label != null) ...[
                    const SizedBox(width: 5),
                    AutoSizeText(
                      label!,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      minFontSize: 10,
                      style: PapyrusFont.bodySExtraBold.copyWith(
                        color: isDisabled && textColor != null
                            ? PapyrusColors.neutral200
                            : textColor ?? PapyrusColors.white,
                      ),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}
