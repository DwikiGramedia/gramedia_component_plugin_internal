import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusButton extends StatelessWidget {
  const PapyrusButton({
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

  const PapyrusButton.secondary({
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
          loadingColor: PapyrusColors.brand500,
          backgroundColor: PapyrusColors.white,
          textColor: PapyrusColors.neutral700,
          borderColor: PapyrusColors.neutral150,
          isDisabled: isDisabled,
        );

  PapyrusButton.tertiery({
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
          loadingColor: PapyrusColors.brand500,
          backgroundColor: PapyrusColors.white,
          textColor: PapyrusColors.neutral700,
          borderColor: PapyrusColors.white.withOpacity(0),
          isDisabled: isDisabled,
        );

  @override
  Widget build(BuildContext context) {
    var isDisabled = this.isDisabled || onTap == null;
    var buttonColor = isDisabled && backgroundColor != PapyrusColors.white
        ? PapyrusColors.neutral200
        : backgroundColor ?? PapyrusColors.brand500;

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
                  color: loadingColor ?? PapyrusColors.white,
                  strokeWidth: 2,
                ),
              )
            : AutoSizeText(
                label,
                textAlign: TextAlign.center,
                maxLines: 1,
                minFontSize: 10,
                style: PapyrusFont.bodySExtraBold.copyWith(
                  color: isDisabled && textColor != null
                      ? PapyrusColors.neutral200
                      : textColor ?? PapyrusColors.white,
                ),
              ),
      ),
    );
  }
}
