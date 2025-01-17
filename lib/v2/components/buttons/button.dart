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
  });

  final VoidCallback? onTap;
  final String label;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? loadingColor;

  const SmartlibButton.white({
    Key? key,
    required String label,
    VoidCallback? onTap,
    bool isLoading = false,
    Color? loadingColor,
  }) : this(
          key: key,
          onTap: onTap,
          label: label,
          isLoading: isLoading,
          loadingColor: SmartlibColors.brand500,
          backgroundColor: SmartlibColors.white,
          textColor: SmartlibColors.neutral700,
          borderColor: SmartlibColors.neutral150,
        );

  @override
  Widget build(BuildContext context) {
    var buttonColor = onTap == null
        ? SmartlibColors.neutral200
        : backgroundColor ?? SmartlibColors.brand500;

    return InkWell(
      onTap: onTap,
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
                  color: textColor ?? SmartlibColors.white,
                ),
              ),
      ),
    );
  }
}
