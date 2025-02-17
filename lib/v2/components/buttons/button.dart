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
    this.iconSize = 20,
    this.borderRadius,
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
  final double iconSize;
  final BorderRadius? borderRadius;

  const PapyrusButton.secondary({
    Key? key,
    required String? label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
    IconData? icon,
    double iconSize = 20,
    BorderRadius? borderRadius,
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
          iconSize: iconSize,
          borderRadius: borderRadius,
        );

  PapyrusButton.tertiery({
    Key? key,
    required String? label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
    IconData? icon,
    double iconSize = 20,
    BorderRadius? borderRadius,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: PapyrusColors.brand500,
          backgroundColor: PapyrusColors.white,
          textColor: PapyrusColors.neutral700,
          borderColor: PapyrusColors.white.withOpacity(0),
          isDisabled: isDisabled,
          icon: icon,
          iconSize: iconSize,
          borderRadius: borderRadius,
        );

  @override
  Widget build(BuildContext context) {
    var isDisabled = this.isDisabled || onTap == null;
    var buttonColor = isDisabled && backgroundColor != PapyrusColors.white
        ? PapyrusColors.neutral200
        : backgroundColor ?? PapyrusColors.brand500;

    return Material(
      color: Colors.transparent, // Transparent to show ripple properly
      child: Ink(
        decoration: BoxDecoration(
          color: buttonColor, // Background color of the button
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          border: Border.all(color: borderColor ?? buttonColor),
        ),
        child: InkWell(
          onTap: isLoading || isDisabled ? null : onTap,
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          splashColor: Colors.white.withOpacity(0.3), // Ripple color
          child: Container(
            width: double.infinity,
            height: 44,
            alignment: Alignment.center,
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
                      ]
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
