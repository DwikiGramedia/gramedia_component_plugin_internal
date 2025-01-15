import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class SLTextField extends HookWidget {
  const SLTextField({
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
  final GramediaColor? textColor;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? errorText;
  final bool isPasswordError;
  final bool autovalidateMode;
  final Function(PointerDownEvent?)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    var fn = focusNode ?? useFocusNode();

    return TextFormField(
      onTapOutside: onTapOutside,
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
      style: TypographyHelper().getValue(
        UrbanistFont.mobile_text_m_medium,
        ColorHelper().getColor(textColor ?? GramediaColor.neutral700),
        false,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIcon: prefixIcon,
        errorText: errorText,
        errorStyle: TypographyHelper().getValue(
          UrbanistFont.mobile_text_xs_medium,
          ColorHelper().getColor(GramediaColor.red500),
          false,
        ),
        errorMaxLines: 3,
        labelStyle: TypographyHelper().getValue(
          UrbanistFont.mobile_text_m_medium,
          ColorHelper().getColor(textColor ?? GramediaColor.neutral700),
          false,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorHelper().getColor(GramediaColor.neutral200),
          ),
          borderRadius: BorderRadius.circular(
            RadiusHelper().radius(RadiusCase.radius_S),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorHelper().getColor(GramediaColor.red500)),
          borderRadius: BorderRadius.circular(
            RadiusHelper().radius(RadiusCase.radius_S),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorHelper().getColor(GramediaColor.red500)),
          borderRadius: BorderRadius.circular(
            RadiusHelper().radius(RadiusCase.radius_S),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isPasswordError
                ? ColorHelper().getColor(GramediaColor.red500)
                : ColorHelper().getColor(GramediaColor.neutral700),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            RadiusHelper().radius(RadiusCase.radius_S),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: isPasswordError
                ? ColorHelper().getColor(GramediaColor.red500)
                : ColorHelper().getColor(GramediaColor.neutral500),
          ),
          borderRadius: BorderRadius.circular(
            RadiusHelper().radius(RadiusCase.radius_S),
          ),
        ),
      ),
    );
  }
}
