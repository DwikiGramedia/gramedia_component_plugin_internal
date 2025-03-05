import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:papilus_component_gramedia/v2/foundation/foundation.dart';

class PapyrusTextField extends HookWidget {
  const PapyrusTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.focusNode,
    this.isObscure = false,
    this.keyboardType,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.inputFormatters,
    this.textColor,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.errorText,
    this.isPasswordError = false,
    this.autovalidateMode = true,
    this.onTapOutside,
    this.maxLength,
    this.maxLines,
  });

  final TextEditingController controller;
  final String labelText;
  final FocusNode? focusNode;
  final bool isObscure;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function(String?)? onFieldSubmitted;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final Color? textColor;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? errorText;
  final bool isPasswordError;
  final bool autovalidateMode;
  final Function(PointerDownEvent?)? onTapOutside;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    var fn = focusNode ?? useFocusNode();

    return TextFormField(
      onTapOutside: onTapOutside,
      maxLength: maxLength,
      maxLines: maxLines,
      key: key,
      onTap: onTap,
      obscureText: isObscure,
      obscuringCharacter: '●',
      autocorrect: false,
      keyboardType: keyboardType,
      focusNode: fn,
      controller: controller,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      autovalidateMode:
          autovalidateMode ? AutovalidateMode.onUserInteraction : null,
      style: PapyrusFont.bodyMMedium.copyWith(
        color: textColor ?? PapyrusColors.neutral700,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        labelText: labelText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIcon: prefixIcon,
        errorText: errorText,
        errorStyle: PapyrusFont.bodyXSMedium.copyWith(
          color: PapyrusColors.red500,
        ),
        errorMaxLines: 3,
        labelStyle: PapyrusFont.bodyMMedium.copyWith(
          color: textColor ?? PapyrusColors.neutral700,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PapyrusColors.neutral200),
          borderRadius: BorderRadius.circular(PapyrusRadius.rS),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PapyrusColors.red500),
          borderRadius: BorderRadius.circular(PapyrusRadius.rS),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: PapyrusColors.red500),
          borderRadius: BorderRadius.circular(PapyrusRadius.rS),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isPasswordError
                ? PapyrusColors.red500
                : PapyrusColors.neutral700,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(PapyrusRadius.rS),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isPasswordError
                ? PapyrusColors.red500
                : PapyrusColors.neutral500,
          ),
          borderRadius: BorderRadius.circular(PapyrusRadius.rS),
        ),
      ),
    );
  }
}
