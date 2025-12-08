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
  var colorStateValue = SearchFieldState.enable;

  SearchFieldState setValueState() {
    if (widget.isEnabled == false) {
      return SearchFieldState.disable;
    } else {
      return SearchFieldState.enable;
    }
  }

  @override
  void initState() {
    setState(() {
      colorStateValue = setValueState();
    });
    super.initState();
  }

  Color searchFieldColor(SearchFieldState state) {
    switch (state) {
      case SearchFieldState.enable:
        return PapyrusColors.neutral600;
      case SearchFieldState.error:
        return PapyrusColors.red50;
      case SearchFieldState.focus:
        return PapyrusColors.neutral600;
      case SearchFieldState.disable:
        return PapyrusColors.neutral150;
    }
  }

  Widget? iconButton(SearchFieldState state) {
    switch (state) {
      case SearchFieldState.enable:
        return null;
      case SearchFieldState.error:
        return null;
      case SearchFieldState.focus:
        return IconButton(
          onPressed: () {
            widget.controller.clear();
            FocusScope.of(context).unfocus();
            setState(() {
              colorStateValue = SearchFieldState.enable;
            });
          },
          icon: Icon(FluentIcons.dismiss_circle_20_filled),
        );
      case SearchFieldState.disable:
        return null;
    }
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
          if (widget.onTap != null) {
            widget.onTap!();
          }
          setState(() {
            colorStateValue = SearchFieldState.focus;
          });
        },

        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: baseHintStyle,
          prefixIcon: Icon(
            Icons.search,
            color: widget.isEnabled
                ? searchFieldColor(colorStateValue)
                : PapyrusColors.neutral150,
          ),

          suffixIcon: iconButton(colorStateValue),
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
