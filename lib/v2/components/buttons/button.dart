import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class SmartlibButton extends StatelessWidget {
  const SmartlibButton({
    super.key,
    required this.label,
    this.onTap,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.loadingColor,
    this.isDisabled = false,
  });

  final VoidCallback? onTap;
  final String label;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? loadingColor;
  final bool isDisabled;

  const SmartlibButton.secondary({
    Key? key,
    required String label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: SmartlibColors.brand500,
          backgroundColor: SmartlibColors.white,
          textColor: SmartlibColors.neutral700,
          borderColor: SmartlibColors.neutral150,
          isDisabled: isDisabled,
        );

  SmartlibButton.tertiery({
    Key? key,
    required String label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
    bool isDisabled = false,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: SmartlibColors.brand500,
          backgroundColor: SmartlibColors.white,
          textColor: SmartlibColors.neutral700,
          borderColor: SmartlibColors.white.withOpacity(0),
          isDisabled: isDisabled,
        );

  @override
  Widget build(BuildContext context) {
    var isDisabled = this.isDisabled || onTap == null;
    var buttonColor = isDisabled && backgroundColor != SmartlibColors.white
        ? SmartlibColors.neutral200
        : backgroundColor ?? SmartlibColors.brand500;

    return InkWell(
      onTap: isLoading || isDisabled ? null : onTap,
      child: Container(
        width: double.infinity,
        height: 44,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: borderColor ?? buttonColor),
          ),
        ),
        child: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: loadingColor ?? SmartlibColors.white,
                  strokeWidth: 2,
                ),
              )
            : AutoSizeText(
                label,
                textAlign: TextAlign.center,
                maxLines: 1,
                minFontSize: 10,
                style: SmartlibFont.bodySExtraBold.copyWith(
                  color: isDisabled && textColor != null
                      ? SmartlibColors.neutral200
                      : textColor ?? SmartlibColors.white,
                ),
              ),
      ),
    );
  }
}
