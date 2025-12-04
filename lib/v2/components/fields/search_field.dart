import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/v2/foundation/colors.dart';
import 'package:papilus_component_gramedia/v2/foundation/radius.dart';
import 'package:papilus_component_gramedia/v2/foundation/typography.dart';

enum SearchFieldState { enable, error, focus, disable }

class PapyrusSearchField extends StatefulWidget {
  final bool isEnabled;
  final TextEditingController controller;
  final String? hintText;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function()? onTap;

  const PapyrusSearchField({
    required this.controller,
    this.hintText,
    this.focusNode,
    this.isEnabled = true,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    super.key,
  });

  @override
  State<PapyrusSearchField> createState() => _PapyrusSearchFieldState();
}

class _PapyrusSearchFieldState extends State<PapyrusSearchField> {
  late SearchFieldState fieldState;

  @override
  void initState() {
    super.initState();
    fieldState = widget.isEnabled
        ? SearchFieldState.enable
        : SearchFieldState.disable;
  }

  // --- Simple replacement for textStyleState (same behavior, smaller) ---
  TextStyle resolveTextStyle(
    Set<WidgetState> states, {
    required TextStyle base,
  }) {
    return base; // All states use same style in your original code
  }

  Color resolvePrefixColor() {
    switch (fieldState) {
      case SearchFieldState.enable:
      case SearchFieldState.focus:
        return PapyrusColors.neutral600;
      case SearchFieldState.error:
        return PapyrusColors.red50;
      case SearchFieldState.disable:
        return PapyrusColors.neutral150;
    }
  }

  Widget? buildSuffixIcon() {
    if (fieldState == SearchFieldState.focus) {
      return IconButton(
        icon: const Icon(FluentIcons.dismiss_circle_20_filled),
        onPressed: () {
          widget.controller.clear();
          FocusScope.of(context).unfocus();
          setState(() => fieldState = SearchFieldState.enable);
        },
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final baseHintStyle = PapyrusFont.bodySMedium.copyWith(
      color: PapyrusColors.neutral200,
    );

    return SizedBox(
      height: 48,
      child: TextField(
        enabled: widget.isEnabled,
        controller: widget.controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        onTapAlwaysCalled: true,
        onTap: () {
          widget.onTap?.call();
          setState(() => fieldState = SearchFieldState.focus);
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: resolveTextStyle({}, base: baseHintStyle),
          prefixIcon: Icon(Icons.search, color: resolvePrefixColor()),
          suffixIcon: buildSuffixIcon(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          filled: true,
          fillColor: widget.isEnabled
              ? PapyrusColors.white
              : PapyrusColors.neutral50,
          enabledBorder: OutlineInputBorder(
            borderRadius: .circular(PapyrusRadius.rInfinity),
            borderSide: BorderSide(color: PapyrusColors.neutral500),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: .circular(PapyrusRadius.rInfinity),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(PapyrusRadius.rInfinity),
            borderSide: BorderSide(color: PapyrusColors.neutral700, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: .circular(PapyrusRadius.rInfinity),
            borderSide: BorderSide(color: PapyrusColors.red500),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: .circular(PapyrusRadius.rInfinity),
            borderSide: BorderSide(color: PapyrusColors.red500),
          ),
        ),
      ),
    );
  }
}
